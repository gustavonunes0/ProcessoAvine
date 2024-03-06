import styled from "styled-components";

export const Main = styled.main`
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 0;
  min-height: 100vh;
  background-color: #000;

  

  @media screen and (max-width: 850px) {
    padding-top: 10vh;
  }
`;

export const ContainerPrincipal = styled.div`
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    width: 100%;
    min-height: 90vh;
    gap: 3rem;
    padding: 0 0 2rem 0;
    background-color: #fff;
    background-image:  linear-gradient( to top, black, gray, transparent); 
`;

export const ContainerInfosCNPJ = styled.ul`
    display: flex;
    justify-content: center;
    align-items: start;
    flex-direction: column;
    width: 60%;
    padding: 2rem;
    gap: 1rem;
    border-radius: 1rem;
    background-color: #fff;

  @media screen and (max-width: 800px) {
    width: 80%;
  }
`;

export const itemCNPJ = styled.li`
    list-style-type: none;
    font-weight: 600;
    letter-spacing: .15rem;

  @media screen and (max-width: 800px) {
    font-size: .7rem;
  }
  @media screen and (max-width: 600px) {
    font-size: .7rem;
    letter-spacing: .05rem;
  }
`;

export const SpanPrincipal = styled.span`
    color: #000;
    width: 70%;
    font-size: 2.5rem;
    font-weight: 700;
    z-index: 2;
    letter-spacing: .2rem;
    text-align: center;

  @media screen and (max-width: 800px) {
    font-size: .7rem;
  }
  @media screen and (max-width: 600px) {
    font-size: .7rem;
    letter-spacing: .05rem;
  }
`;
export const textoLinkASP = styled.span`
    color: red;
    font-weight: 600;
    z-index: 2;
    letter-spacing: .15rem;
    text-align: center;

  @media screen and (max-width: 800px) {
    font-size: 1.5rem;
  }
  @media screen and (max-width: 400px) {
    font-size: 1.2rem;
    width: 80%;
  }
`;
export const LinkASP = styled.a`
    color: red;
    font-weight: 600;
    z-index: 2;
    letter-spacing: .15rem;
    text-align: center;

  @media screen and (max-width: 800px) {
    font-size: 1.5rem;
  }
  @media screen and (max-width: 400px) {
    font-size: 1.2rem;
    width: 80%;
  }
`;

export const InputCNPJ = styled.input`
    color: #000;
    width: 30%;
    height: 4rem;
    border-radius: .7rem;
    border: none;
    padding: 0 1rem;
    font-size: 1rem;
    font-weight: 500;
    z-index: 2;
    letter-spacing: .2rem;
    
  @media screen and (max-width: 850px) {
    width: 50%;
    height: 3rem;
    font-size: .7rem;
  }
  @media screen and (max-width: 650px) {
    width: 60%;
    height: 2.5rem;
    font-size: .7rem;
  }
`;
export const ButtonSearch = styled.button`
    color: #000;
    width: 10%;
    height: 2rem;
    border-radius: .7rem;
    border: none;
    padding: 0 1rem;
    font-size: 1rem;
    font-weight: 500;
    cursor: pointer;
    
    &:hover{
      background-color: #dedede;
    }

  @media screen and (max-width: 850px) {
    width: 20%;
  }
  @media screen and (max-width: 650px) {
    width: 30%;
  }
`;
