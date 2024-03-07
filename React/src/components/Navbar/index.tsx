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
                <img alt="" src="/../public/logo.png" width={54} height={54} />
              </S.MenuItem>
            </S.MenuItems>
          </S.Menu>
        </S.HeaderBox>
      </S.HeaderContainer>
    </>
  );
};

export default NavBar;
