.class public final Ln/b;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Ln/c;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln/c;Ljava/lang/Object;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Ln/b;->l:Ln/c;

    iput-object p2, p0, Ln/b;->m:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ly8/c;)Ly8/c;
    .locals 2

    new-instance v0, Ln/b;

    iget-object v1, p0, Ln/b;->l:Ln/c;

    iget-object p0, p0, Ln/b;->m:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, p1}, Ln/b;-><init>(Ln/c;Ljava/lang/Object;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly8/c;

    invoke-virtual {p0, p1}, Ln/b;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Ln/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ln/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Ln/b;->l:Ln/c;

    invoke-static {p1}, Ln/c;->b(Ln/c;)V

    iget-object p0, p0, Ln/b;->m:Ljava/lang/Object;

    invoke-static {p1, p0}, Ln/c;->a(Ln/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object v0, p1, Ln/c;->c:Ln/k;

    iget-object v0, v0, Ln/k;->m:Lr0/e1;

    invoke-virtual {v0, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, Ln/c;->e:Lr0/e1;

    invoke-virtual {p1, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
