.class final Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LegacySharedPreferencesPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->clear(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegacySharedPreferencesPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacySharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n777#2:189\n873#2,2:190\n1915#2,2:192\n*S KotlinDebug\n*F\n+ 1 LegacySharedPreferencesPlugin.kt\nio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2\n*L\n100#1:189\n100#1:190,2\n103#1:192,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.flutter.plugins.sharedpreferences.LegacySharedPreferencesPlugin$clear$2"
    f = "LegacySharedPreferencesPlugin.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $allowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $prefix:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->this$0:Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;

    iput-object p2, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->$allowList:Ljava/util/List;

    iput-object p3, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->$prefix:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;

    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->this$0:Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;

    iget-object v2, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->$allowList:Ljava/util/List;

    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->$prefix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;-><init>(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 96
    iget v1, v0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->this$0:Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;

    invoke-static {v1}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->access$getPreferences$p(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preferences"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 98
    .local v1, "clearEditor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->$allowList:Ljava/util/List;

    if-eqz v4, :cond_1

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 99
    .local v4, "allowSet":Ljava/util/Set;
    :goto_0
    iget-object v5, v0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->this$0:Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;

    invoke-static {v5}, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;->access$getPreferences$p(Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin;)Landroid/content/SharedPreferences;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_2
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-object v5, v0, Lio/flutter/plugins/sharedpreferences/LegacySharedPreferencesPlugin$clear$2;->$prefix:Ljava/lang/String;

    .line 100
    nop

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 189
    .local v6, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v2

    .local v8, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 190
    .local v9, "$i$f$filterTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .local v12, "key":Ljava/lang/String;
    const/4 v13, 0x0

    .line 101
    .local v13, "$i$a$-filter-LegacySharedPreferencesPlugin$clear$2$1":I
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-static {v12, v5, v15, v14, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v4, :cond_4

    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    const/4 v15, 0x1

    .line 190
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "$i$a$-filter-LegacySharedPreferencesPlugin$clear$2$1":I
    :cond_5
    if-eqz v15, :cond_3

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filterTo":I
    move-object v3, v7

    check-cast v3, Ljava/util/List;

    .line 189
    nop

    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filter":I
    check-cast v3, Ljava/lang/Iterable;

    .line 103
    nop

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 192
    .local v2, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .local v7, "key":Ljava/lang/String;
    const/4 v8, 0x0

    .line 103
    .local v8, "$i$a$-forEach-LegacySharedPreferencesPlugin$clear$2$2":I
    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "$i$a$-forEach-LegacySharedPreferencesPlugin$clear$2$2":I
    goto :goto_2

    .line 193
    :cond_7
    nop

    .line 104
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
