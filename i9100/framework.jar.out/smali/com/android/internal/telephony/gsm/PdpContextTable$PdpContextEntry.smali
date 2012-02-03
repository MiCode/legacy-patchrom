.class Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;
.super Ljava/lang/Object;
.source "PdpContextTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/PdpContextTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PdpContextEntry"
.end annotation


# instance fields
.field public context2gNum:I

.field public context3gNum:I

.field public mccmnc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "mccmnc"
    .parameter "context2gNum"
    .parameter "context3gNum"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;->mccmnc:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;->context2gNum:I

    .line 35
    iput p3, p0, Lcom/android/internal/telephony/gsm/PdpContextTable$PdpContextEntry;->context3gNum:I

    .line 36
    return-void
.end method
