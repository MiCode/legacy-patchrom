.class Lcom/android/internal/telephony/IccCard$OemCommands;
.super Ljava/lang/Object;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemCommands"
.end annotation


# static fields
.field static final OEM_AUTH_APDU:I = 0x8

.field static final OEM_FUNCTION_ID_AUTH:I = 0x15


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$OemCommands;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
