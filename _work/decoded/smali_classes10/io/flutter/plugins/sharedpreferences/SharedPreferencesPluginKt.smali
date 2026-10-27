.class public final Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;
.super Ljava/lang/Object;
.source "SharedPreferencesPlugin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a*\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0014H\u0000\u001a\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"%\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007*\u00020\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "TAG",
        "",
        "SHARED_PREFERENCES_NAME",
        "LIST_PREFIX",
        "JSON_LIST_PREFIX",
        "DOUBLE_PREFIX",
        "sharedPreferencesDataStore",
        "Landroidx/datastore/core/DataStore;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "Landroid/content/Context;",
        "getSharedPreferencesDataStore",
        "(Landroid/content/Context;)Landroidx/datastore/core/DataStore;",
        "sharedPreferencesDataStore$delegate",
        "Lkotlin/properties/ReadOnlyProperty;",
        "preferencesFilter",
        "",
        "key",
        "value",
        "",
        "allowList",
        "",
        "transformPref",
        "listEncoder",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;",
        "shared_preferences_android_debug"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOUBLE_PREFIX:Ljava/lang/String; = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu"

.field public static final JSON_LIST_PREFIX:Ljava/lang/String; = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu!"

.field public static final LIST_PREFIX:Ljava/lang/String; = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

.field public static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "FlutterSharedPreferences"

.field public static final TAG:Ljava/lang/String; = "SharedPreferencesPlugin"

.field private static final sharedPreferencesDataStore$delegate:Lkotlin/properties/ReadOnlyProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "sharedPreferencesDataStore"

    const-string v4, "getSharedPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const-class v5, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;

    invoke-direct {v2, v5, v3, v4, v0}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    sput-object v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const-string v3, "FlutterSharedPreferences"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;->preferencesDataStore$default(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlin/properties/ReadOnlyProperty;

    move-result-object v0

    sput-object v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->sharedPreferencesDataStore$delegate:Lkotlin/properties/ReadOnlyProperty;

    return-void
.end method

.method public static final getSharedPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;
    .locals 3
    .param p0, "$this$sharedPreferencesDataStore"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->sharedPreferencesDataStore$delegate:Lkotlin/properties/ReadOnlyProperty;

    sget-object v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadOnlyProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/DataStore;

    return-object v0
.end method

.method public static final preferencesFilter(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "allowList"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    if-nez p2, :cond_2

    .line 513
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 516
    :cond_2
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final transformPref(Ljava/lang/Object;Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)Ljava/lang/Object;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "listEncoder"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    const-string v0, "listEncoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 522
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v1, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v1, "substring(...)"

    const/16 v5, 0x28

    if-eqz v0, :cond_1

    .line 525
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v6, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu!"

    invoke-static {v0, v6, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    move-object v0, p0

    goto :goto_0

    .line 528
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;->decode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    .line 530
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v6, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu"

    invoke-static {v0, v6, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 534
    :cond_2
    return-object p0
.end method
