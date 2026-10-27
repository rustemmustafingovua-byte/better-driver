.class public final Le2/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lf1/q;

.field public b:I

.field public c:Lt0/b;

.field public d:Lt0/b;

.field public e:Z

.field public final synthetic f:Le2/c1;


# direct methods
.method public constructor <init>(Le2/c1;Lf1/q;ILt0/b;Lt0/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/a1;->f:Le2/c1;

    iput-object p2, p0, Le2/a1;->a:Lf1/q;

    iput p3, p0, Le2/a1;->b:I

    iput-object p4, p0, Le2/a1;->c:Lt0/b;

    iput-object p5, p0, Le2/a1;->d:Lt0/b;

    iput-boolean p6, p0, Le2/a1;->e:Z

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 2

    iget-object v0, p0, Le2/a1;->c:Lt0/b;

    iget v1, p0, Le2/a1;->b:I

    add-int/2addr p1, v1

    iget-object v0, v0, Lt0/b;->l:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lf1/p;

    iget-object p0, p0, Le2/a1;->d:Lt0/b;

    add-int/2addr v1, p2

    iget-object p0, p0, Lt0/b;->l:[Ljava/lang/Object;

    aget-object p0, p0, v1

    check-cast p0, Lf1/p;

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    if-ne p1, p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
