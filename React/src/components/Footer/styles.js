import styled from "styled-components";

export const Footer = styled.footer`
  width: 100%;
  display: flex;
  padding: 2rem 0;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  background-color: #000;
  gap: .6rem;
  @media screen and (max-width: 850px) {
    height: auto;
  }
`;

export const FooterSubmenu = styled.div`
  width: 100%;
  display: flex;
  justify-content: center;
  gap: 1.5rem;
  color: white;

  @media screen and (max-width: 850px) {
  }
`;

export const FooterSubmenuTitle = styled.span`
  font-size: 1.4rem;
  font-weight: 800;
  color: #fff;
  letter-spacing: 0.1rem;
  white-space: nowrap;

  &:nth-child(2){
    margin-top: 2rem;
  }
`;

export const FooterSubmenuSocialMedia = styled.img`
  width: 1.5rem;

  &:hover {
    filter: brightness(.5);
  }
`;
