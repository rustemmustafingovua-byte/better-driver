.class public final Lf2/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2/x;


# instance fields
.field public l:Z

.field public final synthetic m:Lm1/h0;


# direct methods
.method public constructor <init>(Lm1/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/c0;->m:Lm1/h0;

    return-void
.end method


# virtual methods
.method public final a(Lm2/w;Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lf2/c0;->m:Lm1/h0;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf2/c0;->l:Z

    :cond_0
    return-void
.end method
