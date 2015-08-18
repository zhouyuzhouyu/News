//
//  TableData.swift
//  News
//
//  Created by 周玉 on 15/8/13.
//  Copyright (c) 2015年 周玉. All rights reserved.
//

import UIKit
class CellData: NSObject {
    var type:Int = 0
    var height:Double = 0.0
    var dicData:[String:Any] = [:]

}

class GroupData: NSObject {
    var type:Int = 0
    var height:Double = 0.0
    var allCells:[CellData] = []
    
    func count() -> Int {
        return allCells.count
    }
    
    func addCell(cellData:CellData) {
        allCells.append(cellData)
    }
    
    func addCellWithType(cellType:Int, height:Double) -> CellData {
        var theCell = CellData()
        theCell.type = cellType
        theCell.height = height
        allCells.append(theCell)
        
        return theCell
    }
    
    func objectAtIndex(index:Int) -> CellData? {
        if index < allCells.count {
            return allCells[index]
        }
        return nil
    }

}

class TableData: NSObject {
    var allGroups:[GroupData] = []
    var dicData:[String:Any] = [:]
    
    func count() -> Int {
        return allGroups.count
    }
    
    func addObject(groupData:GroupData) {
        allGroups.append(groupData)
    }
    
    func addGroupWithType(groupType:Int) -> GroupData {
        var theGroup = GroupData()
        theGroup.type = groupType
        allGroups.append(theGroup)
        
        return theGroup
    }
    
    func objectAtIndex(index:Int) -> GroupData? {
        if index < allGroups.count {
            return allGroups[index]
        }
        return nil
    }
    
    
}
