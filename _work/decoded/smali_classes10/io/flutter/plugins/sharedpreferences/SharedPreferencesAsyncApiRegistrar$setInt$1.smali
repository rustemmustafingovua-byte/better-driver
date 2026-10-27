.class final Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "MessagesAsync.g.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->setInt(Ljava/lang/String;JLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.flutter.plugins.sharedpreferences.SharedPreferencesAsyncApiRegistrar"
    f = "MessagesAsync.g.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x19b
    }
    m = "setInt"
    n = {
        "key",
        "options",
        "it",
        "value",
        "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setInt$2"
    }
    nl = {
        0x19c
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "J$0",
        "I$0"
    }
    v = 0x2
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;


# direct methods
.method constructor <init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->result:Ljava/lang/Object;

    iget v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->label:I

    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->setInt(Ljava/lang/String;JLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
