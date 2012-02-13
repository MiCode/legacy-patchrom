.class final Lcom/android/phone/AssistedDialingUtil$CtryListNode;
.super Ljava/lang/Object;
.source "AssistedDialingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AssistedDialingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CtryListNode"
.end annotation


# instance fields
.field private ctryName:Ljava/lang/String;

.field mccCode:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "mcc"
    .parameter "name"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->mccCode:I

    .line 96
    iput-object p2, p0, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->ctryName:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->ctryName:Ljava/lang/String;

    return-object v0
.end method
