import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier{
  int selectedBottomTab = 0;
  int temp = 0;
  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isBonnetLock = true;
  bool isTrunkLock = true;
  bool isCoolSelected = true;
  bool isShowTyre = false;
  bool isShowTyreStatus = false;

  void onBottomNavigationTabChange(int index){
    selectedBottomTab = index;
    notifyListeners();
  }


  void updateRightDoorLock(){
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
  }
  void updateLeftDoorLock(){
    isLeftDoorLock = !isLeftDoorLock;
    notifyListeners();
  }
  void updateBonnetLock(){
    isBonnetLock = !isBonnetLock;
    notifyListeners();
  }
  void updateTrunkLock(){
    isTrunkLock = !isTrunkLock;
    notifyListeners();
  }

  void updateCoolSelectedTab(){
    isCoolSelected = !isCoolSelected;
    notifyListeners();
  }

  void incrementTemp(){
    temp++;
    notifyListeners();
  }

  void decrementTemp(){
    if(temp > 0){
      temp--;
      notifyListeners();
    }
  }

  void showTyreController(int index){
    if(selectedBottomTab != 3 && index == 3){
      Future.delayed(Duration(milliseconds: 400), (){
        isShowTyre = true;
        notifyListeners();
      });
    } else {
      isShowTyre = false;
      notifyListeners();
    }
  }

  void tyreStatusController(int index){
    if(selectedBottomTab != 3 && index == 3){
      isShowTyreStatus = true;
      notifyListeners();
    } else {
      Future.delayed(Duration(milliseconds: 400), (){
        isShowTyreStatus = false;
        notifyListeners();
      });
    }
  }

}