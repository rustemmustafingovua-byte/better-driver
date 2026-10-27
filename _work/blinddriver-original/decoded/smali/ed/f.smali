.class public final Led/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Led/d;

.field public static final f:Ljava/util/Set;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljd/b;

.field public final c:Lod/a5;

.field public final d:Lgd/d;

.field public final e:Lla/v;


# direct methods
.method static constructor <clinit>()V
    .locals 48

    new-instance v0, Led/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Led/f;->Companion:Led/d;

    const-string v46, "play_api"

    const-string v47, "bad_signature"

    const-string v1, "rate"

    const-string v2, "too_big"

    const-string v3, "bad_request"

    const-string v4, "exists"

    const-string v5, "auth"

    const-string v6, "type"

    const-string v7, "quota"

    const-string v8, "storage"

    const-string v9, "hash"

    const-string v10, "server"

    const-string v11, "name"

    const-string v12, "entries"

    const-string v13, "duplicate"

    const-string v14, "encrypted"

    const-string v15, "method"

    const-string v16, "special"

    const-string v17, "file_too_big"

    const-string v18, "ratio"

    const-string v19, "total_too_big"

    const-string v20, "no_meta"

    const-string v21, "not_zip"

    const-string v22, "corrupt"

    const-string v23, "timeout"

    const-string v24, "csv_header"

    const-string v25, "csv_bad_rows"

    const-string v26, "csv_encoding"

    const-string v27, "csv_empty"

    const-string v28, "line_too_long"

    const-string v29, "too_many_rows"

    const-string v30, "meta_json"

    const-string v31, "meta_schema"

    const-string v32, "meta_shape"

    const-string v33, "meta_key"

    const-string v34, "meta_string"

    const-string v35, "meta_number"

    const-string v36, "meta_type"

    const-string v37, "comment_long"

    const-string v38, "comment_encoding"

    const-string v39, "route_json"

    const-string v40, "route_shape"

    const-string v41, "route_point"

    const-string v42, "not_entitled"

    const-string v43, "bad_query"

    const-string v44, "play_billing"

    const-string v45, "off"

    filled-new-array/range {v1 .. v47}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll7/a;->z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Led/f;->f:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljd/b;Lod/a5;Lod/a5;)V
    .locals 7

    sget-object v5, Lgd/h;->b:Lla/v;

    new-instance v0, Lgd/d;

    const/4 v4, 0x0

    const/16 v6, 0x10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lgd/d;-><init>(Ljd/b;Li9/a;Li9/a;Lp/a1;Lla/v;I)V

    const-string p1, "client"

    invoke-static {v5, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "https://blinddriver.duckdns.org"

    iput-object p1, p0, Led/f;->a:Ljava/lang/String;

    iput-object v1, p0, Led/f;->b:Ljd/b;

    iput-object v2, p0, Led/f;->c:Lod/a5;

    iput-object v0, p0, Led/f;->d:Lgd/d;

    invoke-virtual {v5}, Lla/v;->a()Lla/u;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lla/u;->i:Z

    iput-boolean p2, p1, Lla/u;->j:Z

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string p3, "unit"

    invoke-static {p2, p3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 p2, 0xb4

    invoke-static {p2, p3}, Lma/e;->b(J)I

    move-result p2

    iput p2, p1, Lla/u;->w:I

    const-wide/16 p2, 0x78

    invoke-static {p2, p3}, Lma/e;->b(J)I

    move-result p2

    iput p2, p1, Lla/u;->z:I

    const-wide/16 p2, 0x3c

    invoke-virtual {p1, p2, p3}, Lla/u;->a(J)V

    new-instance p2, Lla/v;

    invoke-direct {p2, p1}, Lla/v;-><init>(Lla/u;)V

    iput-object p2, p0, Led/f;->e:Lla/v;

    return-void
.end method

.method public static final a(Led/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "\"error\"\\s*:\\s*\"([a-z_]{1,24})\""

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string v0, "compile(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "matcher(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    check-cast p0, Lr9/e;

    invoke-virtual {p0, p1}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object p1, Led/f;->f:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    const-string p0, "server"

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/io/File;Ljava/lang/String;Lb0/y;Lod/d5;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v0, Lba/d;->n:Lba/d;

    new-instance v1, Lb0/z0;

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lb0/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, v1, p4}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
