.class public final synthetic Lnd/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnd/g0;->l:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lm1/f0;

    const-string v0, "$this$graphicsLayer"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lnd/g0;->l:F

    invoke-virtual {p1, p0}, Lm1/f0;->i(F)V

    invoke-virtual {p1, p0}, Lm1/f0;->j(F)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
