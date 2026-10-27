.class public final Ln/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lk/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Ln/g0;->a:I

    sget-object v0, Lk/l;->a:Lk/x;

    new-instance v0, Lk/x;

    invoke-direct {v0}, Lk/x;-><init>()V

    iput-object v0, p0, Ln/g0;->b:Lk/x;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Float;I)Ln/f0;
    .locals 2

    new-instance v0, Ln/f0;

    sget-object v1, Ln/w;->b:Lc2/c0;

    invoke-direct {v0, p1, v1}, Ln/f0;-><init>(Ljava/lang/Float;Ln/v;)V

    iget-object p0, p0, Ln/g0;->b:Lk/x;

    invoke-virtual {p0, p2, v0}, Lk/x;->h(ILjava/lang/Object;)V

    return-object v0
.end method
