.class public final Lr/d2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:J


# direct methods
.method public constructor <init>(JLy8/c;)V
    .locals 0

    iput-wide p1, p0, Lr/d2;->m:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 3

    new-instance v0, Lr/d2;

    iget-wide v1, p0, Lr/d2;->m:J

    invoke-direct {v0, v1, v2, p2}, Lr/d2;-><init>(JLy8/c;)V

    iput-object p1, v0, Lr/d2;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr/l2;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/d2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/d2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/d2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr/d2;->l:Ljava/lang/Object;

    check-cast p1, Lr/l2;

    iget-object p1, p1, Lr/l2;->a:Lr/n2;

    iget-object v0, p1, Lr/n2;->k:Lr/s1;

    iget-wide v1, p0, Lr/d2;->m:J

    const/4 p0, 0x1

    invoke-virtual {p1, v0, v1, v2, p0}, Lr/n2;->c(Lr/s1;JI)J

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
