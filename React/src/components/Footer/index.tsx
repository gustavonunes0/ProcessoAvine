import * as S from "./styles";
import Link from "next/link";
import Image from "next/image";
const Footer = () => {
    return (
        <S.Footer>
            <S.FooterSubmenuTitle>MINHAS REDES</S.FooterSubmenuTitle>
            <S.FooterSubmenu>
                <a href="https://github.com/gustavonunes0" target="_blank">
                    <S.FooterSubmenuSocialMedia src={"/github.svg"}/>
                </a>
                <a href="https://www.linkedin.com/in/gustavo-norões-b44b46205/" target="_blank">
                    <S.FooterSubmenuSocialMedia src={"/linkedinIcon.svg"}/>
                </a>
            </S.FooterSubmenu>
        </S.Footer>
    );
};

export default Footer;
