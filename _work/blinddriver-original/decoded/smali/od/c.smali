.class public final synthetic Lod/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:J

.field public final synthetic m:F


# direct methods
.method public synthetic constructor <init>(JFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lod/c;->l:J

    iput p3, p0, Lod/c;->m:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x37

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-wide v0, p0, Lod/c;->l:J

    iget p0, p0, Lod/c;->m:F

    invoke-static {v0, v1, p0, p1, p2}, Lod/f;->f(JFLr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
