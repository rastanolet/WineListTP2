<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Grapes Controller
 *
 * @property \App\Model\Table\GrapesTable $Grapes
 *
 * @method \App\Model\Entity\Grape[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class GrapesController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index()
    {
        $grapes = $this->paginate($this->Grapes);

        $this->set(compact('grapes'));
    }

    /**
     * View method
     *
     * @param string|null $id Grape id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $grape = $this->Grapes->get($id, [
            'contain' => ['Wines'],
        ]);

        $this->set('grape', $grape);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $grape = $this->Grapes->newEntity();
        if ($this->request->is('post')) {
            $grape = $this->Grapes->patchEntity($grape, $this->request->getData());
            if ($this->Grapes->save($grape)) {
                $this->Flash->success(__('The grape has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The grape could not be saved. Please, try again.'));
        }
        $wines = $this->Grapes->Wines->find('list', ['limit' => 200]);
        $this->set(compact('grape'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Grape id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $grape = $this->Grapes->get($id, [
            'contain' => ['Wines'],
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $grape = $this->Grapes->patchEntity($grape, $this->request->getData());
            if ($this->Grapes->save($grape)) {
                $this->Flash->success(__('The grape has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The grape could not be saved. Please, try again.'));
        }
        $wines = $this->Grapes->Wines->find('list', ['limit' => 200]);
        $this->set(compact('grape'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Grape id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $grape = $this->Grapes->get($id);
        if ($this->Grapes->delete($grape)) {
            $this->Flash->success(__('The grape has been deleted.'));
        } else {
            $this->Flash->error(__('The grape could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
