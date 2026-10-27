.class public final Ls/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lx9/b0;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lw9/a;->m:Lw9/a;

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-static {v2, v1, v0}, Lx9/c0;->a(IILw9/a;)Lx9/b0;

    move-result-object v0

    iput-object v0, p0, Ls/i;->a:Lx9/b0;

    return-void
.end method


# virtual methods
.method public final a(Ls/h;Ly8/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ls/i;->a:Lx9/b0;

    invoke-virtual {p0, p1, p2}, Lx9/b0;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final b(Ls/h;)V
    .locals 0

    iget-object p0, p0, Ls/i;->a:Lx9/b0;

    invoke-virtual {p0, p1}, Lx9/b0;->q(Ljava/lang/Object;)Z

    return-void
.end method
