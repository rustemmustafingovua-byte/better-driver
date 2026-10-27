.class public final synthetic Lo0/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf1/r;

.field public final synthetic m:F

.field public final synthetic n:Lz0/d;


# direct methods
.method public synthetic constructor <init>(Lf1/r;FLz0/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/i3;->l:Lf1/r;

    iput p2, p0, Lo0/i3;->m:F

    iput-object p3, p0, Lo0/i3;->n:Lz0/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x187

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Lo0/i3;->l:Lf1/r;

    iget v1, p0, Lo0/i3;->m:F

    iget-object p0, p0, Lo0/i3;->n:Lz0/d;

    invoke-static {v0, v1, p0, p1, p2}, Lo0/m3;->c(Lf1/r;FLz0/d;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
