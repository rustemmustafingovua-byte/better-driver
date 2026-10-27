.class public Lw0/b;
.super Lu8/f;
.source "SourceFile"

# interfaces
.implements Lu0/d;


# static fields
.field public static final n:Lw0/b;


# instance fields
.field public final l:Lw0/j;

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw0/b;

    sget-object v1, Lw0/j;->e:Lw0/j;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw0/b;-><init>(Lw0/j;I)V

    sput-object v0, Lw0/b;->n:Lw0/b;

    return-void
.end method

.method public constructor <init>(Lw0/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/b;->l:Lw0/j;

    iput p2, p0, Lw0/b;->m:I

    return-void
.end method


# virtual methods
.method public a()Lw0/d;
    .locals 1

    new-instance v0, Lw0/d;

    invoke-direct {v0, p0}, Lw0/d;-><init>(Lw0/b;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Lx0/a;)Lw0/b;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lw0/b;->l:Lw0/j;

    invoke-virtual {v2, v1, v0, p1, p2}, Lw0/j;->u(IILjava/lang/Object;Ljava/lang/Object;)Lf7/c0;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance p2, Lw0/b;

    iget-object v0, p1, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Lw0/j;

    iget p0, p0, Lw0/b;->m:I

    iget p1, p1, Lf7/c0;->b:I

    add-int/2addr p0, p1

    invoke-direct {p2, v0, p0}, Lw0/b;-><init>(Lw0/j;I)V

    return-object p2
.end method

.method public bridge synthetic builder()Lu0/c;
    .locals 0

    invoke-virtual {p0}, Lw0/b;->a()Lw0/d;

    move-result-object p0

    return-object p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object p0, p0, Lw0/b;->l:Lw0/j;

    invoke-virtual {p0, v1, v0, p1}, Lw0/j;->d(IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object p0, p0, Lw0/b;->l:Lw0/j;

    invoke-virtual {p0, v1, v0, p1}, Lw0/j;->g(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
