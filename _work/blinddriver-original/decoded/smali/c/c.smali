.class public final synthetic Lc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Li9/a;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(ZLi9/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lc/c;->l:Z

    iput-object p2, p0, Lc/c;->m:Li9/a;

    iput p3, p0, Lc/c;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lc/c;->n:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-boolean v0, p0, Lc/c;->l:Z

    iget-object p0, p0, Lc/c;->m:Li9/a;

    invoke-static {v0, p0, p1, p2}, Lwa/h;->a(ZLi9/a;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
