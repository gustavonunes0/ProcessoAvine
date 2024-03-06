import * as S from "./styles"; // Ensure the correct path to your styles file
import Link from "next/link";
import Image from "next/image";
import { useState } from "react";


const NavBar: React.FC = () => {

  
  return (
    <>
      <S.HeaderContainer>
        <S.HeaderBox>
          <S.Menu>
            <S.MenuItems> 
              <S.MenuItem>
                <Image alt="" src="/OlhoSetima.svg" width={84} height={45} />
              </S.MenuItem>
            </S.MenuItems>
          </S.Menu>
        </S.HeaderBox>
      </S.HeaderContainer>
    </>
  );
};

export default NavBar;
