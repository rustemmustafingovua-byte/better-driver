.class public final Lm0/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/r;


# instance fields
.field public final synthetic a:Lm0/v1;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lm0/v1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/w1;->a:Lm0/v1;

    iput-boolean p2, p0, Lm0/w1;->b:Z

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lm0/w1;->a:Lm0/v1;

    iget-boolean p0, p0, Lm0/w1;->b:Z

    invoke-virtual {v0, p0}, Lm0/v1;->l(Z)J

    move-result-wide v0

    return-wide v0
.end method
