.class public Lcom/android/internal/telephony/gsm/simCSPtable;
.super Ljava/lang/Object;
.source "simCSPtable.java"


# static fields
.field protected static final DBG:Z = true


# instance fields
.field public ALS:Z

.field public Aoc:Z

.field public BAIC:Z

.field public BICRoam:Z

.field public BOAC:Z

.field public BOIC:Z

.field public BOICexHC:Z

.field public CCBS:Z

.field public CFB:Z

.field public CFNRc:Z

.field public CFNRy:Z

.field public CFU:Z

.field public CLIP:Z

.field public CLIblock:Z

.field public CLIsend:Z

.field public CT:Z

.field public CUG:Z

.field public CUGOA:Z

.field public CW:Z

.field public CoLP:Z

.field public CoLR:Z

.field public Data:Z

.field public Del_Conf:Z

.field public Fax:Z

.field public GPRS:Z

.field public HOLD:Z

.field public HSCSD:Z

.field InfoNumber:B

.field public Language:Z

.field public MCI:Z

.field public MPTY:Z

.field public MultiBand:Z

.field public MultiSubscribProfile:Z

.field public PLMNmode:Z

.field public PrefCUG:Z

.field public ProtocolID:Z

.field public ReplyPath:Z

.field public SM_CB:Z

.field public SM_MO:Z

.field public SM_MO_Email:Z

.field public SM_MO_Paging:Z

.field public SM_MT:Z

.field public UserUserSignaling:Z

.field public VPS:Z

.field public ValidityPeriod:Z

.field public VoiceBroadCastSVC:Z

.field public VoiceGroupCall:Z

.field public services:[B


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFU:Z

    .line 18
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFB:Z

    .line 19
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRy:Z

    .line 20
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRc:Z

    .line 21
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CT:Z

    .line 23
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOAC:Z

    .line 24
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOIC:Z

    .line 25
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOICexHC:Z

    .line 26
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BAIC:Z

    .line 27
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BICRoam:Z

    .line 29
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MPTY:Z

    .line 30
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CUG:Z

    .line 31
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Aoc:Z

    .line 32
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PrefCUG:Z

    .line 33
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CUGOA:Z

    .line 35
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HOLD:Z

    .line 36
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CW:Z

    .line 37
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CCBS:Z

    .line 38
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->UserUserSignaling:Z

    .line 40
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MT:Z

    .line 41
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO:Z

    .line 42
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_CB:Z

    .line 43
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ReplyPath:Z

    .line 44
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Del_Conf:Z

    .line 45
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ProtocolID:Z

    .line 46
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ValidityPeriod:Z

    .line 48
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ALS:Z

    .line 50
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIP:Z

    .line 51
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLR:Z

    .line 52
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLP:Z

    .line 53
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MCI:Z

    .line 54
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIsend:Z

    .line 55
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIblock:Z

    .line 57
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->GPRS:Z

    .line 58
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HSCSD:Z

    .line 59
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceGroupCall:Z

    .line 60
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceBroadCastSVC:Z

    .line 61
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiSubscribProfile:Z

    .line 62
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiBand:Z

    .line 64
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    .line 65
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VPS:Z

    .line 66
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Paging:Z

    .line 67
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Email:Z

    .line 68
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Fax:Z

    .line 69
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Data:Z

    .line 70
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Language:Z

    .line 72
    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->InfoNumber:B

    .line 73
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    .line 83
    const-string v3, "Enter  simCSPtable"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 85
    array-length v2, p1

    .line 86
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 88
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    .line 91
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 93
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    aget-byte v0, v3, v1

    .line 95
    .local v0, Abyte:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abyte is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 98
    sparse-switch v0, :sswitch_data_0

    .line 91
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 101
    :sswitch_0
    const-string v3, "01 : Call offering"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->CallOffering(B)V

    goto :goto_1

    .line 106
    :sswitch_1
    const-string v3, "02 : Call Restriction"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->CallRestriction(B)V

    goto :goto_1

    .line 111
    :sswitch_2
    const-string v3, "03 : Other Supp Services"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->OtherSuppServices(B)V

    goto :goto_1

    .line 116
    :sswitch_3
    const-string v3, "04 : Call Completion"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->CallCompletion(B)V

    goto :goto_1

    .line 121
    :sswitch_4
    const-string v3, "05 : Teleservices"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->Teleservices(B)V

    goto :goto_1

    .line 126
    :sswitch_5
    const-string v3, "06 : CPHS Teleservices"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->CPHSteleservices(B)V

    goto/16 :goto_1

    .line 131
    :sswitch_6
    const-string v3, "07 : CPHS Feature"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    :sswitch_7
    const-string v3, "08 : Number Identif"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->NumberIdentif(B)V

    goto/16 :goto_1

    .line 139
    :sswitch_8
    const-string v3, "09 : Phase 2+ services"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->PhaseTwoServices(B)V

    goto/16 :goto_1

    .line 144
    :sswitch_9
    const-string v3, "C0 : ValueAdded Services"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->ValueAddedServices(B)V

    goto/16 :goto_1

    .line 149
    :sswitch_a
    const-string v3, "D5 : Information Numbers"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->services:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/simCSPtable;->InformationNumbers(B)V

    goto/16 :goto_1

    .line 157
    .end local v0           #Abyte:I
    :cond_1
    return-void

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_9
        -0x2b -> :sswitch_a
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
    .end sparse-switch
.end method

.method private CPHSteleservices(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 257
    shr-int/lit8 v0, p1, 0x7

    int-to-byte p1, v0

    .line 258
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ALS:Z

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ALS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private CallCompletion(B)V
    .locals 1
    .parameter "b"

    .prologue
    .line 222
    shr-int/lit8 v0, p1, 0x4

    int-to-byte p1, v0

    .line 223
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->UserUserSignaling:Z

    .line 224
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 225
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CCBS:Z

    .line 226
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 227
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CW:Z

    .line 228
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 229
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HOLD:Z

    .line 231
    return-void
.end method

.method private CallOffering(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 168
    shr-int/lit8 v0, p1, 0x3

    int-to-byte p1, v0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CT:Z

    .line 170
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRc:Z

    .line 172
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 173
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRy:Z

    .line 174
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 175
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFB:Z

    .line 176
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 177
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFU:Z

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CT is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFNRc is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFNRy is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFNRy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFB is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFU is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CFU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private CallRestriction(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 187
    shr-int/lit8 v0, p1, 0x3

    int-to-byte p1, v0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BICRoam:Z

    .line 189
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 190
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BAIC:Z

    .line 191
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 192
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOICexHC:Z

    .line 193
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 194
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOIC:Z

    .line 195
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 196
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOAC:Z

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BICRoam is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BICRoam:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BAIC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BAIC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOICexHC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOICexHC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOIC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOIC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOAC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->BOAC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private InformationNumbers(B)V
    .locals 0
    .parameter "b"

    .prologue
    .line 337
    iput-byte p1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->InfoNumber:B

    .line 338
    return-void
.end method

.method private NumberIdentif(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 263
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 264
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIblock:Z

    .line 265
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 266
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIsend:Z

    .line 267
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 268
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MCI:Z

    .line 269
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 270
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLP:Z

    .line 271
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 272
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLR:Z

    .line 273
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 274
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIP:Z

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLIblock is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIblock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLIsend is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIsend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCI is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MCI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoLP is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoLR is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CoLR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLIP is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CLIP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private OtherSuppServices(B)V
    .locals 1
    .parameter "b"

    .prologue
    .line 207
    shr-int/lit8 v0, p1, 0x3

    int-to-byte p1, v0

    .line 208
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CUGOA:Z

    .line 209
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PrefCUG:Z

    .line 211
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 212
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Aoc:Z

    .line 213
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->CUG:Z

    .line 215
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 216
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MPTY:Z

    .line 218
    return-void
.end method

.method private PhaseTwoServices(B)V
    .locals 3
    .parameter "b"

    .prologue
    const-string v2, "MultiSubscribProfile is "

    .line 287
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 288
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiBand:Z

    .line 289
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 290
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiSubscribProfile:Z

    .line 291
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 292
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceBroadCastSVC:Z

    .line 293
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 294
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceGroupCall:Z

    .line 295
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 296
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HSCSD:Z

    .line 297
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 298
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->GPRS:Z

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPRS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->GPRS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSCSD is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->HSCSD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceGroupCall is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceGroupCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceBroadCastSVC is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VoiceBroadCastSVC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiSubscribProfile is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiSubscribProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiSubscribProfile is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiSubscribProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiBand is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->MultiBand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private Teleservices(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 235
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 236
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ValidityPeriod:Z

    .line 237
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 238
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ProtocolID:Z

    .line 239
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 240
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Del_Conf:Z

    .line 241
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 242
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->ReplyPath:Z

    .line 243
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 244
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_CB:Z

    .line 245
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 246
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO:Z

    .line 247
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 248
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MT:Z

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_CB is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_CB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_MO is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_MT is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private ValueAddedServices(B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Language:Z

    .line 312
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 313
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 314
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Data:Z

    .line 315
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 316
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Fax:Z

    .line 317
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 318
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Email:Z

    .line 319
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 320
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Paging:Z

    .line 321
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 322
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VPS:Z

    .line 323
    shr-int/lit8 v0, p1, 0x1

    int-to-byte p1, v0

    .line 324
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/simCSPtable;->isAvailable(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLMNmode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->PLMNmode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->VPS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_MO_Paging is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Paging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SM_MO_Email is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->SM_MO_Email:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fax is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Fax:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Data:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Language is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/simCSPtable;->Language:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/simCSPtable;->log(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private isAvailable(B)Z
    .locals 2
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    .line 161
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 78
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[simCSPtable]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method
