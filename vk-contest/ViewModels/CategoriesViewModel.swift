//
//  CategoriesViewModel.swift
//  vk-contest
//
//  Created by Askarali Talkybek on 16.12.2022.
//

import Foundation

class Categories : ObservableObject{
    @Published var categories: [Category] = []
    @Published private var activeCount: Int = 0
    init(){
        let newCats=[
            Category(toggle: false, name: "Юмор"),
            Category(toggle: false, name: "Еда"),
            Category(toggle: false, name: "Кино"),
            Category(toggle: false, name: "Спорт"),
            Category(toggle: false, name: "Отдых"),
            Category(toggle: false, name: "Рецепты"),
            Category(toggle: false, name: "Политика"),
            Category(toggle: false, name: "Новости"),
            Category(toggle: false, name: "Автомобили"),
            Category(toggle: false, name: "Сериалы"),
            Category(toggle: false, name: "Прогулки"),
            Category(toggle: false, name: "Юмор"),
            Category(toggle: false, name: "Еда"),
            Category(toggle: false, name: "Кино"),
            Category(toggle: false, name: "Спорт"),
            Category(toggle: false, name: "Отдых"),
            Category(toggle: false, name: "Рецепты"),
            Category(toggle: false, name: "Политика"),
            Category(toggle: false, name: "Новости"),
            Category(toggle: false, name: "Автомобили"),
            Category(toggle: false, name: "Сериалы"),
            Category(toggle: false, name: "Прогулки"),
            Category(toggle: false, name: "Юмор"),
            Category(toggle: false, name: "Еда"),
            Category(toggle: false, name: "Кино"),
            Category(toggle: false, name: "Спорт"),
            Category(toggle: false, name: "Отдых")
        ]
        categories.append(contentsOf:newCats)
    }
    
    func changeActiveCount(isActive:Bool){
        if isActive {
            activeCount+=1
        } else {activeCount-=1}
    }
    func getActiveCount()->Int{
        return activeCount
    }
    
}
