.class public final Landroid/provider/ContactsContract$Intents;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$Intents$Insert;,
        Landroid/provider/ContactsContract$Intents$UI;
    }
.end annotation


# static fields
.field public static final ATTACH_IMAGE:Ljava/lang/String; = "com.android.contacts.action.ATTACH_IMAGE"

.field public static final EXTRA_CREATE_DESCRIPTION:Ljava/lang/String; = "com.android.contacts.action.CREATE_DESCRIPTION"

.field public static final EXTRA_EXCLUDE_MIMES:Ljava/lang/String; = "exclude_mimes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_FORCE_CREATE:Ljava/lang/String; = "com.android.contacts.action.FORCE_CREATE"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_TARGET_RECT:Ljava/lang/String; = "target_rect"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_LARGE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_MEDIUM:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_SMALL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEARCH_SUGGESTION_CLICKED:Ljava/lang/String; = "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

.field public static final SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED:Ljava/lang/String; = "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

.field public static final SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED:Ljava/lang/String; = "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

.field public static final SHOW_OR_CREATE_CONTACT:Ljava/lang/String; = "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
