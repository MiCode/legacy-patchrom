.class public Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipfont/TypefaceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypefaceSortByName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/flipfont/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/TypefaceFinder;


# direct methods
.method public constructor <init>(Lcom/android/settings/flipfont/TypefaceFinder;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;->this$0:Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/flipfont/Typeface;Lcom/android/settings/flipfont/Typeface;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/android/settings/flipfont/Typeface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settings/flipfont/Typeface;->getName()Ljava/lang/String;

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
    .line 103
    check-cast p1, Lcom/android/settings/flipfont/Typeface;

    .end local p1
    check-cast p2, Lcom/android/settings/flipfont/Typeface;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;->compare(Lcom/android/settings/flipfont/Typeface;Lcom/android/settings/flipfont/Typeface;)I

    move-result v0

    return v0
.end method
