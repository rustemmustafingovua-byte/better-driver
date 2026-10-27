.class public final Lm9/b;
.super Lm9/a;
.source "SourceFile"


# instance fields
.field public final m:Lf2/t0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf2/t0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf2/t0;-><init>(I)V

    iput-object v0, p0, Lm9/b;->m:Lf2/t0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Random;
    .locals 1

    iget-object p0, p0, Lm9/b;->m:Lf2/t0;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
