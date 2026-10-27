.class public final Ld6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final t:Ljava/util/TimeZone;


# instance fields
.field public final l:Lt6/p;

.field public final m:Lj6/s;

.field public final n:Lb6/d;

.field public final o:Lb6/o0;

.field public final p:Lj6/q;

.field public final q:Ljava/text/DateFormat;

.field public final r:Ljava/util/Locale;

.field public final s:Ls5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ld6/a;->t:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Lj6/s;Lb6/d;Lb6/o0;Lt6/p;Ljava/text/DateFormat;Ljava/util/Locale;Ls5/a;Lj6/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld6/a;->m:Lj6/s;

    iput-object p2, p0, Ld6/a;->n:Lb6/d;

    iput-object p3, p0, Ld6/a;->o:Lb6/o0;

    iput-object p4, p0, Ld6/a;->l:Lt6/p;

    iput-object p5, p0, Ld6/a;->q:Ljava/text/DateFormat;

    iput-object p6, p0, Ld6/a;->r:Ljava/util/Locale;

    iput-object p7, p0, Ld6/a;->s:Ls5/a;

    iput-object p8, p0, Ld6/a;->p:Lj6/q;

    return-void
.end method
