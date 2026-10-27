.class public final Lm1/a0;
.super Lm1/v;
.source "SourceFile"


# instance fields
.field public final c:Lm1/g;


# direct methods
.method public constructor <init>(Lm1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/a0;->c:Lm1/g;

    return-void
.end method


# virtual methods
.method public final m()Ll1/c;
    .locals 0

    iget-object p0, p0, Lm1/a0;->c:Lm1/g;

    invoke-virtual {p0}, Lm1/g;->c()Ll1/c;

    move-result-object p0

    return-object p0
.end method
