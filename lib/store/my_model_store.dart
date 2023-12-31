import 'package:mobx/mobx.dart';
import 'package:mobx_demo/model/my_model.dart';


part 'my_model_store.g.dart'; // This will be generated by the MobX code generator
class MyModelStore = _MyModelStore with _$MyModelStore;

abstract class _MyModelStore with Store {
  @observable ObservableList<MyModel> modelList = ObservableList<MyModel>();

  @action void addModel(MyModel model) {
    modelList.add(model);
  }

  @action void removeModel(MyModel model) {
    modelList.remove(model);
  }

}