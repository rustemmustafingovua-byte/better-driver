.class public final Lk1/n;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lj9/y;

.field public final synthetic m:I


# direct methods
.method public constructor <init>(Lj9/y;I)V
    .locals 0

    iput-object p1, p0, Lk1/n;->l:Lj9/y;

    iput p2, p0, Lk1/n;->m:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lk1/b0;

    iget v0, p0, Lk1/n;->m:I

    invoke-virtual {p1, v0}, Lk1/b0;->T0(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lk1/n;->l:Lj9/y;

    iput-object p1, p0, Lj9/y;->m:Ljava/lang/Object;

    return-object p1
.end method
