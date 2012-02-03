.class Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
.super Lcom/android/internal/telephony/gsm/stk/ValueObject;
.source "CommandDetails.java"


# instance fields
.field recordNumbers:[I

.field selfExplanatory:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ValueObject;-><init>()V

    return-void
.end method


# virtual methods
.method getTag()Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    return-object v0
.end method
