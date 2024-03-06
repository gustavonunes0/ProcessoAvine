import styled from "styled-components";

export const ContainerProjetos = styled.div`

`;

export const Projeto = styled.div`
    width: 100%;
    height: 60vh;
    background-color: #c4c4c4;
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    filter: brightness(0.5);

    &:hover{
        filter: brightness(1);
    }

    @media screen and (max-width: 850px) {
        height: 18rem;
    }

    
    @media screen and (max-width: 600px) {
        width: 18rem;
    }
`;

export const Container = styled.div`
    width: 100%;
    
    @media screen and (max-width: 600px) {
        width: auto;
    }
`;

export const DivHeader = styled.div`
    display: flex;
    align-items: center;
    gap: .8rem;
    width: 100%;
    
    @media screen and (max-width: 600px) {
        flex-direction: column
    }
`;

export const divLinhaAzul = styled.div`
    width: 100%;
    height: .6rem;
    background-color: #2072fa;
`;

export const Triangulo = styled.div`
    width: 0; 
    height: 0; 
    border-left: 25px solid transparent;
    border-right: 25px solid transparent;
    border-bottom: 25px solid #2072fa;
    position: absolute;
    top: 94.6%;
`;

export const Titulo = styled.span`
    white-space: nowrap;
    font-size: 1.4rem;
    position: relative;
    font-weight: 800;
    color: #fff;
    letter-spacing: .15rem;
`;
