.class public Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;
.super Ljava/lang/Object;
.source "ContactPhotoCacheListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactPhotoCacheListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryData"
.end annotation


# instance fields
.field orderBy:Ljava/lang/String;

.field projection:[Ljava/lang/String;

.field selection:Ljava/lang/String;

.field selectionArgs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

.field uri:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Lcom/android/phone/ContactPhotoCacheListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
