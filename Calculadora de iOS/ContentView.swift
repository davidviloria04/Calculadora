//
//  ContentView.swift
//  Calculadora de iOS
//
//  Created by David Viloria Ortega on 6/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            GeometryReader{ proxy in
                VStack{
                    VStack{
                        Spacer()
                        HStack{
                            Spacer()
                            Text(viewModel.textFieldValue)
                                .foregroundColor(.white)
                                .font(.system(size: 100, weight: .regular))
                                .frame(height: 100, alignment: .center)
                                .padding()
                            
                        }
                    }
                    VerticalButtonStack(viewModel: viewModel,
                                        data: Matrix.firstSection,
                                        columns: Matrix.firstSectionGrid(proxy.size.width * 0.25),
                                        width: proxy.size.width)
                    
                    VerticalButtonStack(viewModel: viewModel,
                                        data: Matrix.secondSection,
                                        columns: Matrix.secondSectionGrid(proxy.size.width * 0.25),
                                        width: proxy.size.width)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


