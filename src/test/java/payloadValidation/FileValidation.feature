Feature: XML File Validation
  Scenario: Validating XML File content

    Given xml payloadResponse = payloadResponse

    Then match $payloadResponse /Document/CstmrDrctDbtInitn/GrpHdr/MsgId == MsgId
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/GrpHdr/CreDtTm == CreDtTm
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/GrpHdr/NbOfTxs == NbOfTxs
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/GrpHdr/InitgPty/Nm == InitgPtyNM
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/PmtInfId == PmtInfId
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/PmtMtd == PmtMtd
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/ReqdColltnDt == ReqdColltnDt

    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/Cdtr/Nm == CdtrNM
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/Cdtr/CtctDtls/PhneNb == PhneNb
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/Cdtr/CtctDtls/EmailAdr == EmailAdr

    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/CdtrAcct/Id/Othr/Id == CdtrAcctID
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/CdtrAgt/FinInstnId/ClrSysMmbId/MmbId == MmbId
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/PmtId/EndToEndId == EndToEndId
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/PmtTpInf/SvcLvl/Prtry == SvcLvlPrtry

    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/PmtTpInf/LclInstrm/Prtry == LclInstrmPrtry
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/PmtTpInf/SeqTp == SeqTp
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/PmtTpInf/CtgyPurp/Prtry == CtgyPurpPrtry


    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/InstdAmt == InstdAm
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/DrctDbtTx/MndtRltdInf/MndtId == MndtId
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/DbtrAgt/FinInstnId/ClrSysMmbId/MmbId == MmbId


    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/Dbtr/Nm == DbtrNM
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/DbtrAcct/Id/Othr/Id == DbtrAcctID
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/DbtrAcct/Tp/Prtry == TPPrtry
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/RmtInf/Ustrd == Ustrd
    Then match $payloadResponse /Document/CstmrDrctDbtInitn/PmtInf/DrctDbtTxInf/RmtInf/Strd/RfrdDocInf/RltdDt == RltdDt



