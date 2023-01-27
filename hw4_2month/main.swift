//
//  main.swift
//  hw4
//
//  Created by Бектур Каримов on 25/1/23.
//

import Foundation

//Создать класс Пенсионер с параметрами имя, фамилия, текущая сумма пенсии, кол-во лет на пенсии. Создать объекты в main и заполнить данными.
//
//
class Pensioner{
    var name: String
    var surname: String
    var totalSumma: Int
    var numberYear: Int
    init(name: String, surname: String, totalSumma: Int, numberYear: Int) {
        self.name = name
        self.surname = surname
        self.totalSumma = totalSumma
        self.numberYear = numberYear
    }
}

//    Создать класс Соц.Фонд с приватным параметром массив пенсионеров, также публичная функция добавить пенсионера, приватная функция, которая увеличивает пенсию если кол-во лет на пенсии превышает 5 лет на 1000 сом. Эта приватная функция вызывается в другой доступной функции раздать пенсию. Функция раздачи пенсии отображает всех пенсионеров: фио и сумма пенсии.

class SocialFound{
    private var pensioners: [Pensioner]
    init(pensioners: [Pensioner]) {
        self.pensioners = pensioners
    }
    
    //   публичная функция добавить пенсионера
    public func addPencioners(add name: Pensioner){
        pensioners.append(name)
    }
    
    // приватная функция, которая увеличивает пенсию если кол-во лет на пенсии превышает 5 лет на 1000 сом.
    private func increasePencia(pencioner: Pensioner){
        if pencioner.numberYear > 5{
            for _ in 1...pencioner.numberYear - 5{
                pencioner.totalSumma += 1000
            }
        }
    }
    
    //    Эта приватная функция вызывается в другой доступной функции раздать пенсию.
    //    Функция раздачи пенсии отображает всех пенсионеров: фио и сумма пенсии.
    public func sendPencia() {
        for pensioner in pensioners {
            increasePencia(pencioner: pensioner)
            print("\(pensioner.name), \(pensioner.surname): \(pensioner.totalSumma)")
        }
    }
}



var pencionery = Pensioner(name: "Alkd", surname: "vkjhs", totalSumma: 600, numberYear: 5)

var penc1 = Pensioner(name: "SADJKdkjas", surname: "dfsjksfdjk", totalSumma: 1000, numberYear: 10)

var socFond = SocialFound(pensioners: [pencionery])
socFond.addPencioners(add: penc1)

socFond.sendPencia()
