.class public final Lf4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lu9/t;


# instance fields
.field public final l:Ly8/h;


# direct methods
.method public constructor <init>(Ly8/h;)V
    .locals 1

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf4/a;->l:Ly8/h;

    return-void
.end method


# virtual methods
.method public final C()Ly8/h;
    .locals 0

    iget-object p0, p0, Lf4/a;->l:Ly8/h;

    return-object p0
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lf4/a;->l:Ly8/h;

    invoke-static {p0, v0}, Lu9/v;->f(Ly8/h;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
