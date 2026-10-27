.class final Lio/sentry/Dsn;
.super Ljava/lang/Object;
.source "Dsn.java"


# static fields
.field private static final ORG_ID_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final orgId:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final projectId:Ljava/lang/String;

.field private final publicKey:Ljava/lang/String;

.field private final secretKey:Ljava/lang/String;

.field private final sentryUri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-string v0, "^o(\\d+)\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/Dsn;->ORG_ID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 23
    .param p1, "dsn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 53
    move-object/from16 v1, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "The DSN is required."

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "dsnString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 60
    :try_start_0
    const-string v0, "://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "schemeEnd":I
    if-ltz v0, :cond_9

    .line 64
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    .line 65
    .local v7, "scheme":Ljava/lang/String;
    const-string v5, "http"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "https"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DSN: Invalid scheme \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "dsnString":Ljava/lang/String;
    .end local p1    # "dsn":Ljava/lang/String;
    throw v4

    .line 69
    .restart local v3    # "dsnString":Ljava/lang/String;
    .restart local p1    # "dsn":Ljava/lang/String;
    :cond_1
    :goto_0
    add-int/lit8 v5, v0, 0x3

    .line 70
    .local v5, "authStart":I
    const/16 v6, 0x40

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move v14, v6

    .line 71
    .local v14, "atIndex":I
    const-string v6, "Invalid DSN: No public key provided."

    if-ltz v14, :cond_8

    .line 74
    :try_start_1
    invoke-virtual {v3, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    .line 75
    .local v15, "userInfo":Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 76
    .local v8, "colonIndex":I
    if-gez v8, :cond_2

    move-object v9, v15

    goto :goto_1

    :cond_2
    invoke-virtual {v15, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :goto_1
    iput-object v9, v1, Lio/sentry/Dsn;->publicKey:Ljava/lang/String;

    .line 77
    if-gez v8, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :goto_2
    iput-object v9, v1, Lio/sentry/Dsn;->secretKey:Ljava/lang/String;

    .line 78
    iget-object v9, v1, Lio/sentry/Dsn;->publicKey:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 82
    add-int/lit8 v6, v14, 0x1

    invoke-static {v3, v6}, Lio/sentry/Dsn;->stripQueryAndFragment(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "hostAndPath":Ljava/lang/String;
    const/16 v9, 0x2f

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .local v10, "firstSlash":I
    const-string v11, "Invalid DSN: A Project Id is required."

    if-ltz v10, :cond_6

    .line 88
    :try_start_2
    invoke-virtual {v6, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 89
    .local v12, "hostPort":Ljava/lang/String;
    invoke-static {v12}, Lio/sentry/Dsn;->portSeparatorIndex(Ljava/lang/String;)I

    move-result v13

    .line 90
    .local v13, "portColon":I
    invoke-static {v12, v13}, Lio/sentry/Dsn;->hostOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 91
    .local v16, "host":Ljava/lang/String;
    if-gez v13, :cond_4

    const/16 v17, -0x1

    move/from16 v4, v17

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v12, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/Dsn;->parsePort(Ljava/lang/String;)I

    move-result v4

    .line 93
    .local v4, "port":I
    :goto_3
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lio/sentry/Dsn;->collapseSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lio/sentry/Dsn;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 94
    .local v19, "rawPath":Ljava/lang/String;
    move/from16 v18, v8

    move-object/from16 v8, v19

    .end local v19    # "rawPath":Ljava/lang/String;
    .local v8, "rawPath":Ljava/lang/String;
    .local v18, "colonIndex":I
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    .line 95
    .local v9, "projectIdStart":I
    move/from16 v19, v0

    const/4 v0, 0x0

    .end local v0    # "schemeEnd":I
    .local v19, "schemeEnd":I
    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/Dsn;->ensureTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/sentry/Dsn;->path:Ljava/lang/String;

    .line 96
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/sentry/Dsn;->projectId:Ljava/lang/String;

    .line 97
    iget-object v0, v1, Lio/sentry/Dsn;->projectId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 101
    move-object v0, v6

    .end local v6    # "hostAndPath":Ljava/lang/String;
    .local v0, "hostAndPath":Ljava/lang/String;
    new-instance v6, Ljava/net/URI;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "hostAndPath":Ljava/lang/String;
    .local v17, "hostAndPath":Ljava/lang/String;
    iget-object v0, v1, Lio/sentry/Dsn;->path:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "api/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, v1, Lio/sentry/Dsn;->projectId:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v12

    .end local v12    # "hostPort":Ljava/lang/String;
    .local v0, "hostPort":Ljava/lang/String;
    const/4 v12, 0x0

    move/from16 v20, v13

    .end local v13    # "portColon":I
    .local v20, "portColon":I
    const/4 v13, 0x0

    move-object/from16 v21, v8

    .end local v8    # "rawPath":Ljava/lang/String;
    .local v21, "rawPath":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v22, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    move/from16 v17, v9

    move-object/from16 v9, v22

    move/from16 v22, v10

    move v10, v4

    move/from16 v4, v22

    .local v0, "hostAndPath":Ljava/lang/String;
    .local v4, "firstSlash":I
    .local v9, "host":Ljava/lang/String;
    .local v10, "port":I
    .local v16, "hostPort":Ljava/lang/String;
    .local v17, "projectIdStart":I
    invoke-direct/range {v6 .. v13}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v1, Lio/sentry/Dsn;->sentryUri:Ljava/net/URI;

    .line 102
    invoke-static {v9}, Lio/sentry/Dsn;->extractOrgId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lio/sentry/Dsn;->orgId:Ljava/lang/String;

    .line 105
    .end local v0    # "hostAndPath":Ljava/lang/String;
    .end local v4    # "firstSlash":I
    .end local v5    # "authStart":I
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "port":I
    .end local v14    # "atIndex":I
    .end local v15    # "userInfo":Ljava/lang/String;
    .end local v16    # "hostPort":Ljava/lang/String;
    .end local v17    # "projectIdStart":I
    .end local v18    # "colonIndex":I
    .end local v19    # "schemeEnd":I
    .end local v20    # "portColon":I
    .end local v21    # "rawPath":Ljava/lang/String;
    nop

    .line 106
    return-void

    .line 98
    .local v4, "port":I
    .restart local v5    # "authStart":I
    .restart local v6    # "hostAndPath":Ljava/lang/String;
    .restart local v7    # "scheme":Ljava/lang/String;
    .restart local v8    # "rawPath":Ljava/lang/String;
    .local v9, "projectIdStart":I
    .local v10, "firstSlash":I
    .restart local v12    # "hostPort":Ljava/lang/String;
    .restart local v13    # "portColon":I
    .restart local v14    # "atIndex":I
    .restart local v15    # "userInfo":Ljava/lang/String;
    .local v16, "host":Ljava/lang/String;
    .restart local v18    # "colonIndex":I
    .restart local v19    # "schemeEnd":I
    :cond_5
    move v0, v10

    move v10, v4

    move v4, v0

    move-object v0, v6

    move-object/from16 v21, v8

    move/from16 v17, v9

    move/from16 v20, v13

    move-object/from16 v9, v16

    move-object/from16 v16, v12

    .end local v6    # "hostAndPath":Ljava/lang/String;
    .end local v8    # "rawPath":Ljava/lang/String;
    .end local v12    # "hostPort":Ljava/lang/String;
    .end local v13    # "portColon":I
    .restart local v0    # "hostAndPath":Ljava/lang/String;
    .local v4, "firstSlash":I
    .local v9, "host":Ljava/lang/String;
    .local v10, "port":I
    .local v16, "hostPort":Ljava/lang/String;
    .restart local v17    # "projectIdStart":I
    .restart local v20    # "portColon":I
    .restart local v21    # "rawPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "dsnString":Ljava/lang/String;
    .end local p1    # "dsn":Ljava/lang/String;
    throw v6

    .line 85
    .end local v4    # "firstSlash":I
    .end local v9    # "host":Ljava/lang/String;
    .end local v16    # "hostPort":Ljava/lang/String;
    .end local v17    # "projectIdStart":I
    .end local v18    # "colonIndex":I
    .end local v19    # "schemeEnd":I
    .end local v20    # "portColon":I
    .end local v21    # "rawPath":Ljava/lang/String;
    .local v0, "schemeEnd":I
    .restart local v3    # "dsnString":Ljava/lang/String;
    .restart local v6    # "hostAndPath":Ljava/lang/String;
    .local v8, "colonIndex":I
    .local v10, "firstSlash":I
    .restart local p1    # "dsn":Ljava/lang/String;
    :cond_6
    move/from16 v19, v0

    move-object v0, v6

    move/from16 v18, v8

    move v4, v10

    .end local v6    # "hostAndPath":Ljava/lang/String;
    .end local v8    # "colonIndex":I
    .end local v10    # "firstSlash":I
    .local v0, "hostAndPath":Ljava/lang/String;
    .restart local v4    # "firstSlash":I
    .restart local v18    # "colonIndex":I
    .restart local v19    # "schemeEnd":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "dsnString":Ljava/lang/String;
    .end local p1    # "dsn":Ljava/lang/String;
    throw v6

    .line 79
    .end local v4    # "firstSlash":I
    .end local v18    # "colonIndex":I
    .end local v19    # "schemeEnd":I
    .local v0, "schemeEnd":I
    .restart local v3    # "dsnString":Ljava/lang/String;
    .restart local v8    # "colonIndex":I
    .restart local p1    # "dsn":Ljava/lang/String;
    :cond_7
    move/from16 v19, v0

    move/from16 v18, v8

    .end local v0    # "schemeEnd":I
    .end local v8    # "colonIndex":I
    .restart local v18    # "colonIndex":I
    .restart local v19    # "schemeEnd":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "dsnString":Ljava/lang/String;
    .end local p1    # "dsn":Ljava/lang/String;
    throw v0

    .line 72
    .end local v15    # "userInfo":Ljava/lang/String;
    .end local v18    # "colonIndex":I
    .end local v19    # "schemeEnd":I
    .restart local v0    # "schemeEnd":I
    .restart local v3    # "dsnString":Ljava/lang/String;
    .restart local p1    # "dsn":Ljava/lang/String;
    :cond_8
    move/from16 v19, v0

    .end local v0    # "schemeEnd":I
    .restart local v19    # "schemeEnd":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "dsnString":Ljava/lang/String;
    .end local p1    # "dsn":Ljava/lang/String;
    throw v0

    .line 62
    .end local v5    # "authStart":I
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v14    # "atIndex":I
    .end local v19    # "schemeEnd":I
    .restart local v0    # "schemeEnd":I
    .restart local v3    # "dsnString":Ljava/lang/String;
    .restart local p1    # "dsn":Ljava/lang/String;
    :cond_9
    move/from16 v19, v0

    .end local v0    # "schemeEnd":I
    .restart local v19    # "schemeEnd":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid DSN: Missing scheme."

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "dsnString":Ljava/lang/String;
    .end local p1    # "dsn":Ljava/lang/String;
    throw v0
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    .end local v19    # "schemeEnd":I
    .restart local v3    # "dsnString":Ljava/lang/String;
    .restart local p1    # "dsn":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DSN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 56
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "The DSN is empty."

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static collapseSlashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 168
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    return-object p0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 173
    .local v1, "previous":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 174
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 175
    .local v3, "c":C
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    if-ne v1, v4, :cond_1

    .line 176
    goto :goto_1

    .line 178
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    move v1, v3

    .line 173
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static ensureTrailingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 189
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static extractOrgId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;

    .line 194
    sget-object v0, Lio/sentry/Dsn;->ORG_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 195
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static hostOf(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "hostPort"    # Ljava/lang/String;
    .param p1, "portColon"    # I

    .line 137
    if-gez p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static parseHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "dsn"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 115
    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "dsnString":Ljava/lang/String;
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 119
    .local v2, "schemeEnd":I
    if-gez v2, :cond_1

    .line 120
    return-object v0

    .line 122
    :cond_1
    add-int/lit8 v3, v2, 0x3

    const/16 v4, 0x40

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 123
    .local v3, "atIndex":I
    if-gez v3, :cond_2

    .line 124
    return-object v0

    .line 126
    :cond_2
    add-int/lit8 v4, v3, 0x1

    invoke-static {v1, v4}, Lio/sentry/Dsn;->stripQueryAndFragment(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "hostAndPath":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 128
    .local v5, "firstSlash":I
    if-gez v5, :cond_3

    .line 129
    return-object v0

    .line 131
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "hostPort":Ljava/lang/String;
    invoke-static {v6}, Lio/sentry/Dsn;->portSeparatorIndex(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lio/sentry/Dsn;->hostOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "host":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, v7

    :goto_0
    return-object v0
.end method

.method private static parsePort(Ljava/lang/String;)I
    .locals 4
    .param p0, "portString"    # Ljava/lang/String;

    .line 142
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DSN: Invalid port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static portSeparatorIndex(Ljava/lang/String;)I
    .locals 2
    .param p0, "hostPort"    # Ljava/lang/String;

    .line 161
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_0

    .line 162
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 161
    :goto_0
    return v0
.end method

.method private static stripQueryAndFragment(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "dsn"    # Ljava/lang/String;
    .param p1, "fromIndex"    # I

    .line 151
    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 152
    .local v0, "cut":I
    const/16 v1, 0x23

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 153
    .local v1, "fragment":I
    if-ltz v1, :cond_1

    if-ltz v0, :cond_0

    if-ge v1, v0, :cond_1

    .line 154
    :cond_0
    move v0, v1

    .line 156
    :cond_1
    if-gez v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private static stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 185
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getOrgId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/sentry/Dsn;->orgId:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/sentry/Dsn;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/sentry/Dsn;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/sentry/Dsn;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/sentry/Dsn;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method getSentryUri()Ljava/net/URI;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/sentry/Dsn;->sentryUri:Ljava/net/URI;

    return-object v0
.end method
