.class final Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Messages.g.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->setDouble(Ljava/lang/String;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "io.flutter.plugins.sharedpreferences.SharedPreferencesApiRegistrar"
    f = "Messages.g.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x91
    }
    m = "setDouble"
    n = {
        "key",
        "it",
        "value",
        "$i$a$-let-SharedPreferencesApiRegistrar$setDouble$2"
    }
    nl = {
        0x92
    }
    s = {
        "L$0",
        "L$1",
        "D$0",
        "I$0"
    }
    v = 0x2
.end annotation


# instance fields
.field D$0:D

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;


# direct methods
.method constructor <init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->result:Ljava/lang/Object;

    iget v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->label:I

    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;

    const-wide/16 v1, 0x0

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->setDouble(Ljava/lang/String;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
