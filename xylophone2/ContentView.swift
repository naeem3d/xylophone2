//
//  ContentView.swift
//  xylophone2
//
//  Created by naeem alabboodi on 4/3/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @State var audioPlayer: AVAudioPlayer?
    
    func playAudio(soundName: String) { /// function to play audio
           
           /// the URL of the audio file.
           /// forResource = name of the file.
           /// withExtension = extension, usually "mp3"
           if let audioURL = Bundle.main.url(forResource: soundName, withExtension: "wav") {
               do {
                   try audioPlayer = AVAudioPlayer(contentsOf: audioURL) /// make the audio player
                   audioPlayer?.numberOfLoops = 0 /// Number of times to loop the audio
                   audioPlayer?.play() /// start playing
                   
               } catch {
                   print("Couldn't play audio. Error: \(error)")
               }
               
           } else {
               print("No audio file found")
           }
       }
    
    
    
    var body: some View {
        VStack(spacing: 25 ){
        Button(action: {playAudio(soundName: "C")}, label: {
            Text("C")
                .frame(width: 400, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.system(size: 60))
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(15)
             
        })
            
     
            
    Button(action: {playAudio(soundName: "G")}, label: {
                      Text("G")
                          .frame(width: 390, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                          .font(.system(size: 60))
                          .foregroundColor(.white)
                          .background(Color.red)
                          .cornerRadius(15)
                          
                  })
            
    Button(action: {playAudio(soundName: "A")}, label: {
                      Text("A")
                          .frame(width: 380, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                          .font(.system(size: 60))
                          .foregroundColor(.white)
                          .background(Color.green)
                          .cornerRadius(15)
                          
                  })
    Button(action: {playAudio(soundName: "F")}, label: {
                              Text("F")
                                  .frame(width: 370, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                  .font(.system(size: 60))
                                  .foregroundColor(.white)
                                .background(Color.yellow)
                                  .cornerRadius(15)
                                  
                          })
    Button(action: {playAudio(soundName: "E")}, label: {
                                      Text("E")
                                          .frame(width: 360, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                          .font(.system(size: 60))
                                          .foregroundColor(.white)
                                        .background(Color.orange)
                                          .cornerRadius(15)
                                          
                                  })
            Button(action: {playAudio(soundName: "D")}, label: {
                                              Text("D")
                                                  .frame(width: 350, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                  .font(.system(size: 60))
                                                  .foregroundColor(.white)
                                                .background(Color.gray)
                                                  .cornerRadius(15)
                                                  
                                          })
            
                  
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    

    
}
