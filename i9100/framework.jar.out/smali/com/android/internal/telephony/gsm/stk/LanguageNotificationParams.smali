.class Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field mInitialLanguage:Z

.field mLanguage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/lang/String;Z)V
    .locals 0
    .parameter "cmdDet"
    .parameter "language"
    .parameter "initialLanguage"

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 242
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;->mLanguage:Ljava/lang/String;

    .line 243
    iput-boolean p3, p0, Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;->mInitialLanguage:Z

    .line 244
    return-void
.end method
