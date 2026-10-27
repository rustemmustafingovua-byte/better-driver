.class public final Lj1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/c;


# instance fields
.field public l:Lj1/a;

.field public m:Lb0/l1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lj1/k;->l:Lj1/k;

    iput-object v0, p0, Lj1/c;->l:Lj1/a;

    return-void
.end method


# virtual methods
.method public final S()F
    .locals 0

    iget-object p0, p0, Lj1/c;->l:Lj1/a;

    invoke-interface {p0}, Lj1/a;->a()Lb3/c;

    move-result-object p0

    invoke-interface {p0}, Lb3/c;->S()F

    move-result p0

    return p0
.end method

.method public final a()F
    .locals 0

    iget-object p0, p0, Lj1/c;->l:Lj1/a;

    invoke-interface {p0}, Lj1/a;->a()Lb3/c;

    move-result-object p0

    invoke-interface {p0}, Lb3/c;->a()F

    move-result p0

    return p0
.end method

.method public final b(Li9/c;)Lb0/l1;
    .locals 3

    new-instance v0, Lb0/l1;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb0/l1;-><init>(IZ)V

    iput-object p1, v0, Lb0/l1;->m:Ljava/lang/Object;

    iput-object v0, p0, Lj1/c;->m:Lb0/l1;

    return-object v0
.end method
