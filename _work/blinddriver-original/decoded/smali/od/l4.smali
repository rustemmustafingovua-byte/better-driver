.class public final Lod/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Li9/c;

.field public final synthetic m:I


# direct methods
.method public constructor <init>(Li9/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/l4;->l:Li9/c;

    iput p2, p0, Lod/l4;->m:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/l4;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lod/l4;->l:Li9/c;

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
