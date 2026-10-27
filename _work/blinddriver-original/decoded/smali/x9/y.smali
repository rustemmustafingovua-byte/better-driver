.class public final Lx9/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/j0;
.implements Lx9/g;
.implements Ly9/q;


# instance fields
.field public final synthetic l:Lx9/l0;


# direct methods
.method public constructor <init>(Lx9/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9/y;->l:Lx9/l0;

    return-void
.end method


# virtual methods
.method public final a(Lx9/h;Ly8/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx9/y;->l:Lx9/l0;

    invoke-virtual {p0, p1, p2}, Lx9/l0;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0
.end method

.method public final b(Ly8/h;ILw9/a;)Lx9/g;
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_0
    sget-object v0, Lw9/a;->m:Lw9/a;

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, -0x3

    if-ne p2, v0, :cond_3

    :cond_2
    sget-object v0, Lw9/a;->l:Lw9/a;

    if-ne p3, v0, :cond_3

    :goto_1
    return-object p0

    :cond_3
    new-instance v0, Ly9/g;

    invoke-direct {v0, p0, p1, p2, p3}, Ly9/f;-><init>(Lx9/g;Ly8/h;ILw9/a;)V

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx9/y;->l:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
