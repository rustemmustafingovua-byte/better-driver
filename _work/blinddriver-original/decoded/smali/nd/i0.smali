.class public final Lnd/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnd/m;

.field public final b:Ljava/util/List;

.field public final c:Lcd/c;

.field public final d:Lcd/c;

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:Z

.field public final i:Z

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V
    .locals 4

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 p5, 0x0

    :cond_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    const/high16 p6, 0x44fa0000    # 2000.0f

    :cond_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    const/high16 p7, 0x43960000    # 300.0f

    :cond_2
    and-int/lit16 v0, p8, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    and-int/lit16 v3, p8, 0x100

    if-eqz v3, :cond_4

    move v1, v2

    :cond_4
    and-int/lit16 p8, p8, 0x200

    if-eqz p8, :cond_5

    const/4 p8, 0x0

    goto :goto_1

    :cond_5
    const-string p8, "https://www.youtube.com/watch?v=IReSMJ1Fozk"

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/i0;->a:Lnd/m;

    iput-object p2, p0, Lnd/i0;->b:Ljava/util/List;

    iput-object p3, p0, Lnd/i0;->c:Lcd/c;

    iput-object p4, p0, Lnd/i0;->d:Lcd/c;

    iput p5, p0, Lnd/i0;->e:F

    iput p6, p0, Lnd/i0;->f:F

    iput p7, p0, Lnd/i0;->g:F

    iput-boolean v0, p0, Lnd/i0;->h:Z

    iput-boolean v1, p0, Lnd/i0;->i:Z

    iput-object p8, p0, Lnd/i0;->j:Ljava/lang/String;

    return-void
.end method
