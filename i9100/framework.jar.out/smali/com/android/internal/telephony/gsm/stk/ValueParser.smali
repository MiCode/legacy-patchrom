.class abstract Lcom/android/internal/telephony/gsm/stk/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveAddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 295
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 296
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 297
    .local v1, length:I
    if-eqz v1, :cond_0

    .line 299
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->SetupCallbcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 305
    :goto_0
    return-object v4

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .line 305
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 280
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 281
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 282
    .local v1, length:I
    if-eqz v1, :cond_0

    .line 284
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 290
    :goto_0
    return-object v4

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .line 290
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveBearerDescription(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/BearerDescription;
    .locals 11
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v9, "ValueParser"

    .line 706
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 707
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 708
    .local v4, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 710
    .local v2, length:I
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/BearerDescription;-><init>()V

    .line 712
    .local v0, bearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .local v5, valueIndex:I
    :try_start_0
    aget-byte v6, v3, v4

    iput-byte v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    .line 713
    const-string v6, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveBearerDescription: Bearer Type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-byte v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    packed-switch v6, :pswitch_data_0

    .line 758
    :pswitch_0
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: Bearer Type not Supported"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: BearerDescription is not among the five"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :goto_0
    move-object v6, v0

    .line 770
    :goto_1
    return-object v6

    .line 716
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_1
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    invoke-direct {v6}, Lcom/android/internal/telephony/gsm/stk/BearerCSD;-><init>()V

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 717
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_1
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->dataRate:I

    .line 718
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :try_start_2
    aget-byte v7, v3, v4

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->bearerService:I

    .line 719
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_3
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->connectionElement:I

    .line 720
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 721
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 722
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: Bearer Type = CSD"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 764
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 765
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    const-string v6, "ValueParser"

    const-string v6, "ResultException: retrieveBearerDescription"

    invoke-static {v9, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 725
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_2
    :try_start_4
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    invoke-direct {v6}, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;-><init>()V

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 726
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_5
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->precedenceClass:I

    .line 727
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :try_start_6
    aget-byte v7, v3, v4

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->delayClass:I

    .line 728
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_7
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->reliabilityClass:I

    .line 729
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :try_start_8
    aget-byte v7, v3, v4

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->peakThroughputClass:I

    .line 730
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_9
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->meanThroughputClass:I

    .line 731
    iget-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :try_start_a
    aget-byte v7, v3, v4

    iput v7, v6, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->packetDataProtocolType:I

    .line 732
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 733
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 734
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: Bearer Type = GPRS"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 735
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_0

    .line 737
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_3
    const/4 v6, 0x3

    iput-byte v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    .line 738
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 739
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 740
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 741
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: Bearer Type = Default"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 742
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_0

    .line 744
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_4
    const/16 v6, 0xb

    iput-byte v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    .line 745
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 746
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 747
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 748
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: Bearer Type = BEARER_E_UTRAN"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 749
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_0

    .line 751
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_5
    const/16 v6, 0x8

    iput-byte v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    .line 752
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    .line 753
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    .line 754
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 755
    const-string v6, "ValueParser"

    const-string/jumbo v7, "retrieveBearerDescription: Bearer Type = BEARER_CDMA"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move v4, v5

    .line 756
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_0

    .line 767
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :catch_1
    move-exception v6

    move-object v1, v6

    move v4, v5

    .line 768
    .end local v5           #valueIndex:I
    .local v1, e:Ljava/lang/Exception;
    .restart local v4       #valueIndex:I
    :goto_3
    const-string v6, "ValueParser"

    const-string v6, "Unknown ResultException in retrieveBearerDescription: "

    invoke-static {v9, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v10

    .line 770
    goto/16 :goto_1

    .line 767
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    move-object v1, v6

    goto :goto_3

    .line 764
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :catch_3
    move-exception v6

    move-object v1, v6

    move v4, v5

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_2

    .line 714
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static retrieveBufferSize(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I
    .locals 11
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const-string v10, "ValueParser"

    .line 784
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 785
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 786
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 787
    .local v2, length:I
    const-string v7, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveBufferSize: valueIndex , Length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :try_start_0
    aget-byte v7, v3, v6

    and-int/lit16 v1, v7, 0xff

    .line 790
    .local v1, firstByte:I
    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v5, v7, 0xff

    .line 791
    .local v5, secondByte:I
    shl-int/lit8 v7, v1, 0x8

    or-int v4, v7, v5

    .line 792
    .local v4, resultByte:I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveBufferSize: buffer size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v7, v4

    .line 801
    .end local v1           #firstByte:I
    .end local v4           #resultByte:I
    .end local v5           #secondByte:I
    :goto_0
    return v7

    .line 795
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 796
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "ValueParser"

    const-string v7, "ResultException: retrieveBufferSize"

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    .line 798
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 799
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ValueParser"

    const-string v7, "Unknown ResultException in retrieveBufferSize: "

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const/4 v7, -0x1

    goto :goto_0
.end method

.method static retrieveChannelData(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B
    .locals 11
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const-string v10, "ValueParser"

    .line 959
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 960
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 961
    .local v5, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 963
    .local v2, length:I
    const-string v7, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveChannelData : value Index , length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :try_start_0
    const-string v7, "ValueParser"

    const-string/jumbo v8, "retrieveChannelData: beginning Byte array copy"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    new-array v4, v2, [B

    .line 967
    .local v4, tempChannelData:[B
    const/4 v1, 0x0

    .local v1, i:I
    move v6, v5

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 968
    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v7, v3, v6

    aput-byte v7, v4, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 967
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    goto :goto_0

    .line 971
    :cond_0
    :try_start_1
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveChannelData: tempChannelData = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Byte Array Copy Complete"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    move-object v7, v4

    .line 979
    .end local v1           #i:I
    .end local v4           #tempChannelData:[B
    :goto_1
    return-object v7

    .line 973
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 974
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    const-string v7, "ValueParser"

    const-string v7, "ResultException: retrieveChannelData"

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    .line 976
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 977
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    const-string v7, "ValueParser"

    const-string v7, "Unknown ResultException in retrieveChannelData: "

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const/4 v7, 0x0

    goto :goto_1

    .line 976
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #valueIndex:I
    .restart local v1       #i:I
    .restart local v4       #tempChannelData:[B
    .restart local v6       #valueIndex:I
    :catch_2
    move-exception v7

    move-object v0, v7

    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_3

    .line 973
    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    :catch_3
    move-exception v7

    move-object v0, v7

    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_2
.end method

.method static retrieveChannelDataLength(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)B
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const-string v6, "ValueParser"

    .line 934
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 935
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 936
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 937
    .local v1, length:I
    const-string v4, "ValueParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retrieveChannelDataLength: valueIndex , Length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 946
    :goto_0
    return v4

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "ValueParser"

    const-string v4, " ResultException: retrieveChannelDataLength"

    invoke-static {v6, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .line 943
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 944
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ValueParser"

    const-string v4, "Unknown ResultException in retrieveChannelDataLength: "

    invoke-static {v6, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;-><init>()V

    .line 44
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 45
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 47
    .local v3, valueIndex:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    .line 48
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    .line 49
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    .line 50
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object v0

    .line 52
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 53
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveDTMFstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B
    .locals 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 366
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 367
    .local v4, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 369
    .local v2, length:I
    if-eqz v2, :cond_1

    .line 370
    add-int/lit8 v6, v2, 0x1

    new-array v0, v6, [B

    .line 371
    .local v0, dtmfString:[B
    const/4 v6, 0x0

    int-to-byte v7, v2

    aput-byte v7, v0, v6

    .line 372
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v4

    .end local v4           #valueIndex:I
    .local v5, valueIndex:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 373
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    aget-byte v7, v3, v5

    aput-byte v7, v0, v6

    .line 372
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_0

    :cond_0
    move v4, v5

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    move-object v6, v0

    .line 377
    .end local v0           #dtmfString:[B
    .end local v1           #i:I
    :goto_1
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method static retrieveDataDestinationAddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;
    .locals 14
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const-string v12, "ValueParser"

    .line 845
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;-><init>()V

    .line 846
    .local v1, dataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 847
    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 848
    .local v7, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v9

    const/4 v10, 0x1

    sub-int v4, v9, v10

    .line 849
    .local v4, length:I
    const-string v9, "ValueParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrieveDataDestinationAddress: valueIndex , Length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    if-gtz v4, :cond_0

    .line 851
    const-string v9, "ValueParser"

    const-string/jumbo v9, "retrieveDataDestinationAddress: Length is 00. Supply Dynamic IP"

    invoke-static {v12, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v13

    .line 879
    :goto_0
    return-object v9

    .line 855
    :cond_0
    add-int/lit8 v8, v7, 0x1

    .end local v7           #valueIndex:I
    .local v8, valueIndex:I
    :try_start_0
    aget-byte v9, v5, v7

    iput-byte v9, v1, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;->addressType:B

    .line 856
    const-string v9, "ValueParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "retrieveDataDestinationAddress: Address Type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, v1, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;->addressType:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " beginning Byte array copy"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    new-array v6, v4, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 859
    .local v6, tempDataDestAddress:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 860
    add-int/lit8 v7, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local v7       #valueIndex:I
    :try_start_1
    aget-byte v9, v5, v8

    aput-byte v9, v6, v3

    .line 861
    const-string v9, "ValueParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v11, v6, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 859
    add-int/lit8 v3, v3, 0x1

    move v8, v7

    .end local v7           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1

    .line 863
    :cond_1
    :try_start_2
    const-string v9, "ValueParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "retrieveDataDestinationAddress: tempDataDestAddress = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Byte array copy complete"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 866
    .local v0, add:Ljava/net/InetAddress;
    const-string v9, "ValueParser"

    const-string/jumbo v10, "retrieveDataDestinationAddress : InetAddress retrieved "

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;->address:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v7, v8

    .end local v8           #valueIndex:I
    .restart local v7       #valueIndex:I
    move-object v9, v1

    .line 869
    goto/16 :goto_0

    .line 870
    .end local v0           #add:Ljava/net/InetAddress;
    .end local v3           #i:I
    .end local v6           #tempDataDestAddress:[B
    .end local v7           #valueIndex:I
    .restart local v8       #valueIndex:I
    :catch_0
    move-exception v9

    move-object v2, v9

    move v7, v8

    .line 871
    .end local v8           #valueIndex:I
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v7       #valueIndex:I
    :goto_2
    const-string v9, "ValueParser"

    const-string v9, " ResultException: retrieveDataDestinationAddress - IndexOutOfBoundsException"

    invoke-static {v12, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .line 873
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v7           #valueIndex:I
    .restart local v8       #valueIndex:I
    :catch_1
    move-exception v9

    move-object v2, v9

    move v7, v8

    .line 874
    .end local v8           #valueIndex:I
    .local v2, e:Ljava/net/UnknownHostException;
    .restart local v7       #valueIndex:I
    :goto_3
    const-string v9, "ValueParser"

    const-string v9, " ResultException: retrieveDataDestinationAddress - UnknownHostException"

    invoke-static {v12, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .line 876
    .end local v2           #e:Ljava/net/UnknownHostException;
    .end local v7           #valueIndex:I
    .restart local v8       #valueIndex:I
    :catch_2
    move-exception v9

    move-object v2, v9

    move v7, v8

    .line 877
    .end local v8           #valueIndex:I
    .local v2, e:Ljava/lang/Exception;
    .restart local v7       #valueIndex:I
    :goto_4
    const-string v9, "ValueParser"

    const-string v9, "Unknown ResultException in retrieveDataDestinationAddress: "

    invoke-static {v12, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v13

    .line 879
    goto/16 :goto_0

    .line 876
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #i:I
    .restart local v6       #tempDataDestAddress:[B
    :catch_3
    move-exception v9

    move-object v2, v9

    goto :goto_4

    .line 873
    :catch_4
    move-exception v9

    move-object v2, v9

    goto :goto_3

    .line 870
    :catch_5
    move-exception v9

    move-object v2, v9

    goto :goto_2
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;-><init>()V

    .line 69
    .local v0, devIds:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 70
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 72
    .local v3, valueIndex:I
    :try_start_0
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->sourceId:I

    .line 73
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object v0

    .line 75
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 76
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, timeInterval:I
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    .line 92
    .local v3, timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 93
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 96
    .local v4, valueIndex:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    .line 97
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v5, 0xff

    .line 101
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Duration;-><init>(ILcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;)V

    return-object v5

    .line 98
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 99
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/IconId;-><init>()V

    .line 166
    .local v1, id:Lcom/android/internal/telephony/gsm/stk/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 167
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 169
    .local v3, valueIndex:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #valueIndex:I
    .local v4, valueIndex:I
    :try_start_0
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    .line 170
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    return-object v1

    .line 169
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 172
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Item;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 114
    .local v2, item:Lcom/android/internal/telephony/gsm/stk/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 115
    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 116
    .local v7, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v3

    .line 118
    .local v3, length:I
    if-eqz v3, :cond_0

    .line 119
    const/4 v8, 0x1

    sub-int v6, v3, v8

    .line 122
    .local v6, textLen:I
    :try_start_0
    aget-byte v8, v4, v7

    and-int/lit16 v1, v8, 0xff

    .line 123
    .local v1, id:I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, text:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/Item;

    .end local v2           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/gsm/stk/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1           #id:I
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #textLen:I
    .restart local v2       #item:Lcom/android/internal/telephony/gsm/stk/Item;
    :cond_0
    return-object v2

    .line 126
    .end local v2           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    .restart local v6       #textLen:I
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 127
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 144
    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 145
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 148
    .local v3, valueIndex:I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    .line 153
    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    .locals 11
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 188
    const-string v8, "ValueParser"

    const-string/jumbo v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;-><init>()V

    .line 191
    .local v1, id:Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 192
    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 193
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    sub-int v4, v8, v10

    .line 194
    .local v4, numOfItems:I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    .line 198
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :try_start_0
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_0

    move v8, v10

    :goto_0
    iput-boolean v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->selfExplanatory:Z

    .line 200
    const/4 v2, 0x0

    .local v2, index:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 201
    iget-object v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    :try_start_1
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_1

    .line 198
    .end local v3           #index:I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v8

    move-object v0, v8

    move v6, v7

    .line 204
    .end local v7           #valueIndex:I
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v6       #valueIndex:I
    :goto_2
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8

    .line 206
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #valueIndex:I
    .restart local v3       #index:I
    .restart local v7       #valueIndex:I
    :cond_1
    return-object v1

    .line 203
    .end local v3           #index:I
    .end local v7           #valueIndex:I
    .restart local v2       #index:I
    .restart local v6       #valueIndex:I
    :catch_1
    move-exception v8

    move-object v0, v8

    goto :goto_2
.end method

.method static retrieveLanguage(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 4
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 686
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 687
    .local v2, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v0

    .line 688
    .local v0, length:I
    if-eqz v0, :cond_0

    .line 689
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 692
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static retrieveNetworkAccessName(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 12
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const-string v11, "ValueParser"

    .line 893
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 894
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 895
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    const/4 v9, 0x1

    sub-int v2, v8, v9

    .line 896
    .local v2, length:I
    add-int/lit8 v6, v6, 0x1

    .line 898
    const-string v8, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveNetworkAccessName: valueIndex , Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :try_start_0
    new-array v5, v2, [B

    .line 901
    .local v5, tempNetworkAccessName:[B
    const-string v8, "ValueParser"

    const-string/jumbo v9, "retrieveNetworkAccessName: beginning Byte array copy"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const/4 v1, 0x0

    .local v1, i:I
    move v7, v6

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 904
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, v3, v7

    aput-byte v8, v5, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 903
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_0

    .line 907
    :cond_0
    :try_start_1
    const-string v8, "ValueParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrieveNetworkAccessName: tempNetworkAccessName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Byte array copy complete"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    new-instance v4, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v4, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 910
    .local v4, tempName:Ljava/lang/String;
    const-string v8, "ValueParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrieveNetworkAccessName: tempName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move v6, v7

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    move-object v8, v4

    .line 921
    .end local v1           #i:I
    .end local v4           #tempName:Ljava/lang/String;
    .end local v5           #tempNetworkAccessName:[B
    :goto_1
    return-object v8

    .line 912
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 913
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    const-string v8, "ValueParser"

    const-string v8, " ResultException: retrieveNetworkAccessName - IndexOutOfBoundsException"

    invoke-static {v11, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8

    .line 915
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 916
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_3
    const-string v8, "ValueParser"

    const-string v8, " ResultException: retrieveNetworkAccessName - UnsupportedEncodingException"

    invoke-static {v11, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8

    .line 918
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 919
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    const-string v8, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveNetworkAccessName: "

    invoke-static {v11, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const/4 v8, 0x0

    goto :goto_1

    .line 918
    .end local v0           #e:Ljava/lang/Exception;
    .end local v6           #valueIndex:I
    .restart local v1       #i:I
    .restart local v5       #tempNetworkAccessName:[B
    .restart local v7       #valueIndex:I
    :catch_3
    move-exception v8

    move-object v0, v8

    move v6, v7

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    goto :goto_4

    .line 915
    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    :catch_4
    move-exception v8

    move-object v0, v8

    move v6, v7

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    goto :goto_3

    .line 912
    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    :catch_5
    move-exception v8

    move-object v0, v8

    move v6, v7

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    goto :goto_2
.end method

.method static retrieveSMSCaddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 431
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 433
    .local v5, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 435
    .local v2, length:I
    add-int/lit8 v6, v2, 0x1

    new-array v4, v6, [B

    .line 438
    .local v4, rawValueSmscaddress:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v6, v2, 0x1

    if-ge v1, v6, :cond_0

    .line 440
    const/4 v6, 0x1

    sub-int v6, v5, v6

    add-int/2addr v6, v1

    :try_start_0
    aget-byte v6, v3, v6

    aput-byte v6, v4, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 443
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 445
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    if-eqz v2, :cond_1

    .line 446
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 448
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6
.end method

.method static retrieveSMSTPDU(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;Z)Ljava/lang/String;
    .locals 9
    .parameter "ctlv"
    .parameter "ispacking_req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 454
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 455
    .local v2, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v0

    .line 456
    .local v0, length:I
    const/4 p0, 0x0

    .line 457
    .local p0, destaddlen:I
    const/4 p0, 0x0

    .line 460
    .local p0, rawPdu:[B
    add-int/lit8 p0, v2, 0x2

    aget-byte p0, v1, p0

    .end local p0           #rawPdu:[B
    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    .line 461
    add-int/lit8 p0, v2, 0x2

    aget-byte p0, v1, p0

    div-int/lit8 p0, p0, 0x2

    .line 465
    .local p0, destaddlen:I
    :goto_0
    add-int/lit8 p0, p0, 0x6

    if-ne v0, p0, :cond_1

    .line 466
    .end local p0           #destaddlen:I
    add-int/lit8 p0, v0, 0x1

    new-array p0, p0, [B

    .local p0, rawPdu:[B
    move-object v5, p0

    .line 472
    .end local p0           #rawPdu:[B
    .local v5, rawPdu:[B
    :goto_1
    const/4 p0, 0x0

    .local p0, i:I
    :goto_2
    if-ge p0, v0, :cond_2

    .line 474
    add-int v3, v2, p0

    :try_start_0
    aget-byte v3, v1, v3

    aput-byte v3, v5, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 463
    .end local v5           #rawPdu:[B
    .end local p0           #i:I
    :cond_0
    add-int/lit8 p0, v2, 0x2

    aget-byte p0, v1, p0

    add-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x2

    .local p0, destaddlen:I
    goto :goto_0

    .line 468
    .end local p0           #destaddlen:I
    :cond_1
    new-array p0, v0, [B

    .local p0, rawPdu:[B
    move-object v5, p0

    .end local p0           #rawPdu:[B
    .restart local v5       #rawPdu:[B
    goto :goto_1

    .line 476
    .local p0, i:I
    :catch_0
    move-exception p0

    .line 477
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 480
    .local p0, i:I
    .restart local p1
    :cond_2
    const/4 p0, 0x1

    if-ne p1, p0, :cond_e

    .line 482
    .end local p0           #i:I
    const/4 p0, 0x0

    .line 484
    .local p0, packingUserDataIndex:I
    const/4 p0, 0x0

    .line 486
    .local p0, packingUserDatalen:I
    const/4 p0, 0x0

    .line 488
    .local p0, adjustedUserDatalen:I
    const/4 p1, 0x0

    .line 490
    .local p1, lengthtoCheck:I
    const/4 p1, 0x0

    .line 492
    .local p1, tpvpvalue:I
    const/4 v1, 0x0

    .line 494
    .local v1, tpvplength:I
    const/4 p1, 0x0

    .line 496
    .local p1, destaddrlen:I
    const-string p1, "ValueParser"

    .end local p1           #destaddrlen:I
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #valueIndex:I
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rawtpvp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, v5, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const/4 p1, 0x0

    aget-byte p1, v5, p1

    and-int/lit8 p1, p1, 0x18

    .line 500
    .local p1, tpvpvalue:I
    const-string v2, "ValueParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tpvpvalue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    if-nez p1, :cond_3

    .line 503
    const/4 p1, 0x0

    .end local v1           #tpvplength:I
    .local p1, tpvplength:I
    move v6, p1

    .line 516
    .end local p1           #tpvplength:I
    .local v6, tpvplength:I
    :goto_3
    const/4 p1, 0x2

    aget-byte p1, v5, p1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    .line 517
    const/4 p1, 0x2

    aget-byte p1, v5, p1

    div-int/lit8 p1, p1, 0x2

    .line 522
    .local p1, destaddrlen:I
    :goto_4
    add-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v6

    add-int/lit8 v3, p1, 0x1

    .line 526
    .local v3, packingUserDataIndex:I
    aget-byte p1, v5, v3

    .end local p1           #destaddrlen:I
    and-int/lit16 v4, p1, 0xff

    .line 528
    .local v4, packingUserDatalen:I
    add-int/lit8 p1, v3, 0x1

    sub-int p1, v0, p1

    .line 530
    .local p1, lengthtoCheck:I
    const-string v1, "ValueParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length to be checked:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    if-ne p1, v4, :cond_9

    .line 535
    const-string p1, "ValueParser"

    .end local p1           #lengthtoCheck:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TPUDL_packingUserDatalen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v2, 0x0

    .line 537
    .local v2, shorten:I
    new-array v1, v4, [B

    .line 540
    .local v1, packinUserData:[B
    const/4 p1, 0x0

    .local p1, j:I
    :goto_5
    if-ge p1, v4, :cond_7

    .line 542
    add-int/lit8 v7, v3, 0x1

    add-int/2addr v7, p1

    :try_start_1
    aget-byte v7, v5, v7

    aput-byte v7, v1, p1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 540
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 505
    .end local v2           #shorten:I
    .end local v3           #packingUserDataIndex:I
    .end local v4           #packingUserDatalen:I
    .end local v6           #tpvplength:I
    .local v1, tpvplength:I
    .local p1, tpvpvalue:I
    :cond_3
    const/16 v2, 0x10

    if-ne p1, v2, :cond_4

    .line 506
    const/4 p1, 0x1

    .end local v1           #tpvplength:I
    .local p1, tpvplength:I
    move v6, p1

    .end local p1           #tpvplength:I
    .restart local v6       #tpvplength:I
    goto :goto_3

    .line 508
    .end local v6           #tpvplength:I
    .restart local v1       #tpvplength:I
    .local p1, tpvpvalue:I
    :cond_4
    const/16 v2, 0x8

    if-ne p1, v2, :cond_5

    .line 509
    const/4 p1, 0x7

    .end local v1           #tpvplength:I
    .local p1, tpvplength:I
    move v6, p1

    .end local p1           #tpvplength:I
    .restart local v6       #tpvplength:I
    goto :goto_3

    .line 511
    .end local v6           #tpvplength:I
    .restart local v1       #tpvplength:I
    .local p1, tpvpvalue:I
    :cond_5
    const/16 v2, 0x18

    if-ne p1, v2, :cond_11

    .line 512
    const/4 p1, 0x7

    .end local v1           #tpvplength:I
    .local p1, tpvplength:I
    move v6, p1

    .end local p1           #tpvplength:I
    .restart local v6       #tpvplength:I
    goto :goto_3

    .line 519
    :cond_6
    const/4 p1, 0x2

    aget-byte p1, v5, p1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    .local p1, destaddrlen:I
    goto :goto_4

    .line 544
    .local v1, packinUserData:[B
    .restart local v2       #shorten:I
    .restart local v3       #packingUserDataIndex:I
    .restart local v4       #packingUserDatalen:I
    .local p1, j:I
    :catch_1
    move-exception p0

    .line 545
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #j:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 549
    .local p0, adjustedUserDatalen:I
    .restart local p1       #j:I
    :cond_7
    const/4 p1, 0x0

    invoke-static {v1, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    .end local p1           #j:I
    move-result-object v1

    .line 552
    .local v1, packinUserDataString:Ljava/lang/String;
    const-string p1, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TPUDL_packingUserDatastring:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v7, 0xa0

    if-le p1, v7, :cond_10

    .line 555
    const/4 p1, 0x0

    const/16 v2, 0x9e

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v2           #shorten:I
    move-result-object p1

    .line 556
    .local p1, fullSizePackinUserDataString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1           #packinUserDataString:Ljava/lang/String;
    const/16 v2, 0x9e

    sub-int/2addr v1, v2

    .line 557
    .local v1, shorten:I
    aget-byte v2, v5, v3

    sub-int/2addr v2, v1

    int-to-byte v2, v2

    aput-byte v2, v5, v3

    .line 558
    move-object p1, p1

    .line 563
    .local p1, packinUserDataString:Ljava/lang/String;
    :goto_6
    :try_start_2
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .line 565
    .local v1, packedUserData:[B
    array-length v2, v1

    .line 567
    .local v2, packedUserDatalen:I
    const-string p1, "ValueParser"

    .end local p1           #packinUserDataString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TPUDL_Packed user data len:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 570
    const/4 p1, 0x1

    .local p1, k:I
    :goto_7
    if-ge p1, v2, :cond_8

    .line 572
    add-int v7, v3, p1

    :try_start_3
    aget-byte v8, v1, p1

    aput-byte v8, v5, v7

    .line 570
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 575
    :cond_8
    const/4 p0, 0x1

    sub-int p0, v2, p0

    sub-int p0, v4, p0

    sub-int p0, v0, p0

    .line 577
    const-string p1, "ValueParser"

    .end local p1           #k:I
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #length:I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TPUDL_Adjusted user data len:"

    .end local v1           #packedUserData:[B
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_3

    move p1, v4

    .line 639
    .end local v4           #packingUserDatalen:I
    .local p1, packingUserDatalen:I
    :goto_8
    const-string p1, "ValueParser"

    .end local p1           #packingUserDatalen:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data coding scheme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v6, 0x1

    sub-int v1, v3, v1

    aget-byte v1, v5, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const/16 v0, 0xf0

    .line 643
    .local v0, datacodingscheme:I
    const/4 p1, 0x0

    .line 644
    .local p1, datacodingfromsim:I
    add-int/lit8 p1, v6, 0x1

    sub-int p1, v3, p1

    aget-byte p1, v5, p1

    .line 645
    and-int/2addr p1, v0

    .line 646
    add-int/lit8 v0, v6, 0x1

    sub-int v0, v3, v0

    int-to-byte p1, p1

    aput-byte p1, v5, v0

    .line 648
    .end local v0           #datacodingscheme:I
    .end local p1           #datacodingfromsim:I
    new-array v0, p0, [B

    .line 651
    .local v0, packeddata:[B
    const/4 p1, 0x0

    .local p1, l:I
    :goto_9
    if-ge p1, p0, :cond_c

    .line 653
    :try_start_4
    aget-byte v1, v5, p1

    aput-byte v1, v0, p1
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_7

    .line 651
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 579
    .end local v0           #packeddata:[B
    .end local p1           #l:I
    .restart local v4       #packingUserDatalen:I
    :catch_2
    move-exception p1

    .line 580
    .local p1, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_5
    new-instance p1, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p1           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p1
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 582
    .end local v2           #packedUserDatalen:I
    :catch_3
    move-exception p1

    .line 583
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #adjustedUserDatalen:I
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 590
    .local v0, length:I
    .restart local p0       #adjustedUserDatalen:I
    .local p1, lengthtoCheck:I
    :cond_9
    add-int/lit8 v4, p1, 0x1

    .line 592
    const-string p1, "ValueParser"

    .end local p1           #lengthtoCheck:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packingUserDatalen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-array v1, v4, [B

    .line 597
    .local v1, packinUserData:[B
    const/4 p1, 0x0

    .local p1, j:I
    :goto_a
    if-ge p1, v4, :cond_a

    .line 599
    add-int v2, v3, p1

    :try_start_6
    aget-byte v2, v5, v2

    aput-byte v2, v1, p1
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_4

    .line 597
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 601
    :catch_4
    move-exception p0

    .line 602
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #j:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 607
    .local p0, adjustedUserDatalen:I
    .restart local p1       #j:I
    :cond_a
    const/4 p1, 0x0

    invoke-static {v1, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    .end local p1           #j:I
    move-result-object p1

    .line 610
    .local p1, packinUserDataString:Ljava/lang/String;
    const-string v1, "ValueParser"

    .end local v1           #packinUserData:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packingUserDatastring:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :try_start_7
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .line 615
    .local v1, packedUserData:[B
    array-length v2, v1

    .line 617
    .restart local v2       #packedUserDatalen:I
    const-string p1, "ValueParser"

    .end local p1           #packinUserDataString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packed user data len:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 620
    const/4 p1, 0x0

    .local p1, k:I
    :goto_b
    const/4 v7, 0x1

    sub-int v7, v2, v7

    if-ge p1, v7, :cond_b

    .line 622
    add-int v7, v3, p1

    add-int/lit8 v8, p1, 0x1

    :try_start_8
    aget-byte v8, v1, v8

    aput-byte v8, v5, v7

    .line 620
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 625
    :cond_b
    const/4 p0, 0x1

    sub-int p0, v2, p0

    sub-int p0, v4, p0

    sub-int p0, v0, p0

    .line 627
    const-string p1, "ValueParser"

    .end local p1           #k:I
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #length:I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adjusted user data len:"

    .end local v1           #packedUserData:[B
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_8 .. :try_end_8} :catch_6

    move p1, v4

    .line 634
    .end local v4           #packingUserDatalen:I
    .local p1, packingUserDatalen:I
    goto/16 :goto_8

    .line 629
    .end local p1           #packingUserDatalen:I
    .restart local v4       #packingUserDatalen:I
    :catch_5
    move-exception p1

    .line 630
    .local p1, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_9
    new-instance p1, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p1           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p1
    :try_end_9
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_9 .. :try_end_9} :catch_6

    .line 632
    .end local v2           #packedUserDatalen:I
    :catch_6
    move-exception p1

    .line 633
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #adjustedUserDatalen:I
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 655
    .end local v4           #packingUserDatalen:I
    .local v0, packeddata:[B
    .restart local v2       #packedUserDatalen:I
    .restart local p0       #adjustedUserDatalen:I
    .local p1, l:I
    :catch_7
    move-exception p0

    .line 656
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #l:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 659
    .local p0, adjustedUserDatalen:I
    .restart local p1       #l:I
    :cond_c
    if-eqz p0, :cond_d

    .line 660
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 669
    .end local v0           #packeddata:[B
    .end local v2           #packedUserDatalen:I
    .end local v3           #packingUserDataIndex:I
    .end local v6           #tpvplength:I
    .end local p0           #adjustedUserDatalen:I
    .end local p1           #l:I
    :goto_c
    return-object p0

    .line 662
    .restart local v0       #packeddata:[B
    .restart local v2       #packedUserDatalen:I
    .restart local v3       #packingUserDataIndex:I
    .restart local v6       #tpvplength:I
    .restart local p0       #adjustedUserDatalen:I
    .restart local p1       #l:I
    :cond_d
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #adjustedUserDatalen:I
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #l:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 668
    .end local v3           #packingUserDataIndex:I
    .end local v6           #tpvplength:I
    .local v0, length:I
    .local v1, rawValue:[B
    .local v2, valueIndex:I
    .local p1, ispacking_req:Z
    :cond_e
    if-eqz v0, :cond_f

    .line 669
    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    .line 671
    :cond_f
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #ispacking_req:Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .local v1, packinUserDataString:Ljava/lang/String;
    .local v2, shorten:I
    .restart local v3       #packingUserDataIndex:I
    .restart local v4       #packingUserDatalen:I
    .restart local v6       #tpvplength:I
    .restart local p0       #adjustedUserDatalen:I
    :cond_10
    move-object p1, v1

    .end local v1           #packinUserDataString:Ljava/lang/String;
    .local p1, packinUserDataString:Ljava/lang/String;
    move v1, v2

    .end local v2           #shorten:I
    .local v1, shorten:I
    goto/16 :goto_6

    .end local v3           #packingUserDataIndex:I
    .end local v4           #packingUserDatalen:I
    .end local v6           #tpvplength:I
    .local v1, tpvplength:I
    .local p1, tpvpvalue:I
    :cond_11
    move v6, v1

    .end local v1           #tpvplength:I
    .restart local v6       #tpvplength:I
    goto/16 :goto_3
.end method

.method static retrieveSSstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 318
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 319
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 320
    .local v1, length:I
    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->SSbcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 328
    :goto_0
    return-object v4

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .line 328
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/util/List;
    .locals 18
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v14, lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/stk/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v15

    .line 222
    .local v15, rawValue:[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 223
    .local v2, valueIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result p0

    .line 225
    .local p0, length:I
    if-eqz p0, :cond_6

    .line 227
    div-int/lit8 v13, p0, 0x4

    .line 230
    .local v13, itemCount:I
    const/16 p0, 0x0

    .local p0, i:I
    move/from16 v12, p0

    .end local p0           #i:I
    .local v12, i:I
    move/from16 v16, v2

    .end local v2           #valueIndex:I
    .local v16, valueIndex:I
    :goto_0
    if-ge v12, v13, :cond_5

    .line 231
    :try_start_0
    aget-byte p0, v15, v16

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v3, v0

    .line 232
    .local v3, start:I
    add-int/lit8 p0, v16, 0x1

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    .line 233
    .local v4, textLength:I
    add-int/lit8 p0, v16, 0x2

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v10, v0

    .line 234
    .local v10, format:I
    add-int/lit8 p0, v16, 0x3

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v2, v0

    .line 236
    .local v2, colorValue:I
    and-int/lit8 p0, v10, 0x3

    .line 237
    .local p0, alignValue:I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/TextAlignment;

    move-result-object v5

    .line 239
    .local v5, align:Lcom/android/internal/telephony/gsm/stk/TextAlignment;
    shr-int/lit8 p0, v10, 0x2

    and-int/lit8 p0, p0, 0x3

    .line 240
    .local p0, sizeValue:I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/FontSize;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/FontSize;

    move-result-object v6

    .line 241
    .local v6, size:Lcom/android/internal/telephony/gsm/stk/FontSize;
    if-nez v6, :cond_0

    .line 243
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/FontSize;->NORMAL:Lcom/android/internal/telephony/gsm/stk/FontSize;

    .line 246
    :cond_0
    and-int/lit8 p0, v10, 0x10

    if-eqz p0, :cond_1

    .end local p0           #sizeValue:I
    const/16 p0, 0x1

    move/from16 v7, p0

    .line 247
    .local v7, bold:Z
    :goto_1
    and-int/lit8 p0, v10, 0x20

    if-eqz p0, :cond_2

    const/16 p0, 0x1

    move/from16 v8, p0

    .line 248
    .local v8, italic:Z
    :goto_2
    and-int/lit8 p0, v10, 0x40

    if-eqz p0, :cond_3

    const/16 p0, 0x1

    move/from16 v9, p0

    .line 249
    .local v9, underlined:Z
    :goto_3
    move v0, v10

    and-int/lit16 v0, v0, 0x80

    move/from16 p0, v0

    if-eqz p0, :cond_4

    const/16 p0, 0x1

    move/from16 v10, p0

    .line 251
    .local v10, strikeThrough:Z
    :goto_4
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/TextColor;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/TextColor;

    move-result-object v11

    .line 253
    .local v11, color:Lcom/android/internal/telephony/gsm/stk/TextColor;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextAttribute;

    .end local v2           #colorValue:I
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/gsm/stk/TextAttribute;-><init>(IILcom/android/internal/telephony/gsm/stk/TextAlignment;Lcom/android/internal/telephony/gsm/stk/FontSize;ZZZZLcom/android/internal/telephony/gsm/stk/TextColor;)V

    .line 256
    .local v2, attr:Lcom/android/internal/telephony/gsm/stk/TextAttribute;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    add-int/lit8 p0, v12, 0x1

    .end local v12           #i:I
    .local p0, i:I
    add-int/lit8 v2, v16, 0x4

    .end local v16           #valueIndex:I
    .local v2, valueIndex:I
    move/from16 v12, p0

    .end local p0           #i:I
    .restart local v12       #i:I
    move/from16 v16, v2

    .end local v2           #valueIndex:I
    .restart local v16       #valueIndex:I
    goto :goto_0

    .line 246
    .end local v7           #bold:Z
    .end local v8           #italic:Z
    .end local v9           #underlined:Z
    .end local v11           #color:Lcom/android/internal/telephony/gsm/stk/TextColor;
    .local v2, colorValue:I
    .local v10, format:I
    :cond_1
    const/16 p0, 0x0

    move/from16 v7, p0

    goto :goto_1

    .line 247
    .restart local v7       #bold:Z
    :cond_2
    const/16 p0, 0x0

    move/from16 v8, p0

    goto :goto_2

    .line 248
    .restart local v8       #italic:Z
    :cond_3
    const/16 p0, 0x0

    move/from16 v9, p0

    goto :goto_3

    .line 249
    .restart local v9       #underlined:Z
    :cond_4
    const/16 p0, 0x0

    move/from16 v10, p0

    goto :goto_4

    .end local v2           #colorValue:I
    .end local v3           #start:I
    .end local v4           #textLength:I
    .end local v5           #align:Lcom/android/internal/telephony/gsm/stk/TextAlignment;
    .end local v6           #size:Lcom/android/internal/telephony/gsm/stk/FontSize;
    .end local v7           #bold:Z
    .end local v8           #italic:Z
    .end local v9           #underlined:Z
    .end local v10           #format:I
    :cond_5
    move/from16 p0, v16

    .end local v16           #valueIndex:I
    .local p0, valueIndex:I
    move-object v2, v14

    .line 265
    .end local v12           #i:I
    .end local v13           #itemCount:I
    :goto_5
    return-object v2

    .line 261
    .end local p0           #valueIndex:I
    .restart local v12       #i:I
    .restart local v13       #itemCount:I
    .restart local v16       #valueIndex:I
    :catch_0
    move-exception p0

    .line 262
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 265
    .end local v12           #i:I
    .end local v13           #itemCount:I
    .end local v16           #valueIndex:I
    .local v2, valueIndex:I
    .local p0, length:I
    :cond_6
    const/16 p0, 0x0

    move/from16 v17, v2

    .end local v2           #valueIndex:I
    .local v17, valueIndex:I
    move-object/from16 v2, p0

    move/from16 p0, v17

    .end local v17           #valueIndex:I
    .local p0, valueIndex:I
    goto :goto_5
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 390
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 391
    .local v6, valueIndex:I
    const/4 v0, 0x0

    .line 392
    .local v0, codingScheme:B
    const/4 v3, 0x0

    .line 393
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v5

    .line 396
    .local v5, textLen:I
    if-nez v5, :cond_0

    move-object v4, v3

    .line 420
    .end local v3           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 402
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 406
    :try_start_0
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    .line 408
    if-nez v0, :cond_1

    .line 409
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 420
    .end local v3           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    goto :goto_0

    .line 411
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    .line 412
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 414
    :cond_2
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    .line 415
    new-instance v3, Ljava/lang/String;

    .end local v3           #text:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3       #text:Ljava/lang/String;
    goto :goto_1

    .line 417
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    .end local v3           #text:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 422
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    .line 423
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 425
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7
.end method

.method static retrieveTransportLevel(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/TransportLevel;
    .locals 11
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const-string v9, " , "

    const-string v10, "ValueParser"

    .line 814
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;-><init>()V

    .line 815
    .local v5, transportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 816
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 817
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 818
    .local v2, length:I
    const-string v7, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveTransportLevel: valueIndex , Length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :try_start_0
    aget-byte v7, v3, v6

    iput-byte v7, v5, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->transportProtocol:B

    .line 821
    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v1, v7, 0xff

    .line 822
    .local v1, firstByte:I
    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v3, v7

    and-int/lit16 v4, v7, 0xff

    .line 823
    .local v4, secondByte:I
    shl-int/lit8 v7, v1, 0x8

    or-int/2addr v7, v4

    iput v7, v5, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    .line 824
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveTransportLevel: transportProtocol , portNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v5, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->transportProtocol:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v5

    .line 832
    .end local v1           #firstByte:I
    .end local v4           #secondByte:I
    :goto_0
    return-object v7

    .line 826
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 827
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "ValueParser"

    const-string v7, "ResultException: retrieveTransportLevel"

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    .line 829
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 830
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ValueParser"

    const-string v7, "Unknown ResultException in retrieveTransportLevel: "

    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const/4 v7, 0x0

    goto :goto_0
.end method

.method static retrieveUSSDstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 342
    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 343
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v3

    .line 344
    .local v3, length:I
    add-int v8, v6, v3

    const/4 v9, 0x1

    sub-int v0, v8, v9

    .line 345
    .local v0, endOfUssdString:I
    if-eqz v3, :cond_1

    .line 346
    new-array v5, v3, [B

    .line 347
    .local v5, ussdString:[B
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    move v7, v6

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :goto_0
    if-gt v7, v0, :cond_0

    .line 348
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, v4, v7

    aput-byte v8, v5, v2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_0

    :cond_0
    move v6, v7

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    move-object v8, v5

    .line 352
    .end local v2           #i:I
    .end local v5           #ussdString:[B
    :goto_1
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method
