.class final Lcom/android/phone/AssistedDialingUtil$1;
.super Ljava/lang/Object;
.source "AssistedDialingUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AssistedDialingUtil;->createCtryNameList(Landroid/content/res/Resources;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/phone/AssistedDialingUtil$CtryListNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/phone/AssistedDialingUtil$CtryListNode;Lcom/android/phone/AssistedDialingUtil$CtryListNode;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    check-cast p1, Lcom/android/phone/AssistedDialingUtil$CtryListNode;

    .end local p1
    check-cast p2, Lcom/android/phone/AssistedDialingUtil$CtryListNode;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/AssistedDialingUtil$1;->compare(Lcom/android/phone/AssistedDialingUtil$CtryListNode;Lcom/android/phone/AssistedDialingUtil$CtryListNode;)I

    move-result v0

    return v0
.end method
