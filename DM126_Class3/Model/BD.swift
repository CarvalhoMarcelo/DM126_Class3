//
//  BD.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/9/24.
//

import Foundation

let servicesMock : [ServiceType] = [
    ServiceType(id: 1, nome: "Agilidade", imagem: "agilidade"),
    ServiceType(id: 2, nome: "Resistencia", imagem: "resistencia"),
    ServiceType(id: 3, nome: "Alongamento", imagem: "alongamento"),
    ServiceType(id: 4, nome: "Velocidade", imagem: "velocidade"),
    ServiceType(id: 5, nome: "Forca", imagem: "forca"),
    ServiceType(id: 6, nome: "Cardio", imagem: "cardio")
]

let usersMock : [String] = [
    String("Marcelo Carvalho"),
    String("Joao Jose"),
    String("Maria Moura"),
    String("Pedro Pedreira")
]

let goalMock: [GoalType] = [
    GoalType(id: 1, icone: "moon.zzz.fill", titulo: "Descanso", descricao: "Dormir 8h por noite"),
    GoalType(id: 2, icone: "hare.fill", titulo: "Exercicio", descricao: "Treino intenso"),
    GoalType(id: 3, icone: "gofoward.60", titulo: "Alimentacao", descricao: "Ingerir 2000 calorias")
]
