//
//  facelib.hpp
//  facelib
//
//  Created by Evan Moran on 6/26/16.
//  Copyright © 2016 Evan Moran. All rights reserved.
//

#ifndef facelib_hpp
#define facelib_hpp

#include <stdio.h>
#include <string>

namespace Face
{
    class Face
    {
        
    };
    
    class IdFace {
        
    };

    class NameFace
    {
        std::wstring displayName;
    };

    class NameableFace
    {
        virtual NameableFace(){}
        
        Mapable& add()
        {
            
        }
        
    };

    class Listable
    {
        
    };

    class SystemFace : Face
    {
        
    };

    class StartableFace : Face
    {
        
    };

    class SimulatableFace : Face
    {
        void simulate(float dt)
        {
            
        }
    };

    class EventFace
    {
        // do
        // know
    };
    
}
#endif /* facelib_hpp */
