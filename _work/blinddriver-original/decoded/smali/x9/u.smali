.class public final Lx9/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/g;


# instance fields
.field public final synthetic l:Lx9/g;

.field public final synthetic m:Lx9/g;

.field public final synthetic n:La9/i;


# direct methods
.method public constructor <init>(Lx9/g;Lx9/g;Li9/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9/u;->l:Lx9/g;

    iput-object p2, p0, Lx9/u;->m:Lx9/g;

    check-cast p3, La9/i;

    iput-object p3, p0, Lx9/u;->n:La9/i;

    return-void
.end method


# virtual methods
.method public final a(Lx9/h;Ly8/c;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lx9/u;->l:Lx9/g;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lx9/u;->m:Lx9/g;

    aput-object v2, v0, v1

    new-instance v1, Lx9/t;

    iget-object p0, p0, Lx9/u;->n:La9/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lx9/t;-><init>(Li9/f;Ly8/c;)V

    sget-object p0, Lx9/v;->l:Lx9/v;

    invoke-static {p0, v1, p1, p2, v0}, Ly9/c;->a(Li9/a;Li9/f;Lx9/h;Ly8/c;[Lx9/g;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
