.class final Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccOpenChannel"
.end annotation


# instance fields
.field public AID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "AID"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    .line 119
    return-void
.end method
