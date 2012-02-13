.class Lcom/android/phone/sip/SipSettings$5;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->retrieveSipLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/sip/SipProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$5;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)I
    .locals 2
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 275
    check-cast p1, Landroid/net/sip/SipProfile;

    .end local p1
    check-cast p2, Landroid/net/sip/SipProfile;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/sip/SipSettings$5;->compare(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)I

    move-result v0

    return v0
.end method

.method public equals(Landroid/net/sip/SipProfile;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method
