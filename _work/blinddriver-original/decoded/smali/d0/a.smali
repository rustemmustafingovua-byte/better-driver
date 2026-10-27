.class public final Ld0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk/h0;

.field public final b:Lk/h0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/h0;

    invoke-direct {v0}, Lk/h0;-><init>()V

    iput-object v0, p0, Ld0/a;->a:Lk/h0;

    new-instance v0, Lk/h0;

    invoke-direct {v0}, Lk/h0;-><init>()V

    iput-object v0, p0, Ld0/a;->b:Lk/h0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Ld0/a;->a:Lk/h0;

    sget-object v0, Le0/f;->b:Le0/f;

    invoke-virtual {p0, v0}, Lk/h0;->a(Ljava/lang/Object;)V

    return-void
.end method
