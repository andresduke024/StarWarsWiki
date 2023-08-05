public struct UIComponents {
    
    public struct Images {
        
        static let logo = "star_wars_logo"
        
        public struct Posters {
            static let episode1 = "episode_1"
            static let episode2 = "episode_2"
            static let episode3 = "episode_3"
            static let episode4 = "episode_4"
            static let episode5 = "episode_5"
            static let episode6 = "episode_6"
            
            public static func get(for episode: Int) -> String? {
                switch episode {
                case 1: return UIComponents.Images.Posters.episode1
                case 2: return UIComponents.Images.Posters.episode2
                case 3: return UIComponents.Images.Posters.episode3
                case 4: return UIComponents.Images.Posters.episode4
                case 5: return UIComponents.Images.Posters.episode5
                case 6: return UIComponents.Images.Posters.episode6
                default: return nil
                }
            }
        }
    }
}
